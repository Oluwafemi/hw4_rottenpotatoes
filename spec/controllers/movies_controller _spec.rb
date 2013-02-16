require 'spec_helper'

describe MoviesController do

  describe "add director field to movies" do

  	it "should route to the MoviesController#similar_movies" do
  	  @movie = Factory(:movie)
  	  @movie.director = 'Ridley Scott'
  	  @movie.save
  	  { :get => "movies/#{@movie.id}/similar_movies" }.should route_to(
  	  	:controller => "movies", 
  	  	:action => "similar_movies", 
  	  	:id => "#{@movie.id}")
  	end

  	it "should call a model method to find similar movies" do
  	  @movie = Factory(:movie)
  	  @movie.director = 'Ridley Scott'
  	  @movie.save
  	  Movie.should_receive(:movies_with_same_directors)
  	  get :similar_movies, :id => @movie
  	end

  	it "should render home page on sad path" do
  	  @movie = Factory(:movie)
  	  Movie.should_not_receive(:movies_with_same_directors)
  	  get :similar_movies, :id => @movie
  	end



  end

end