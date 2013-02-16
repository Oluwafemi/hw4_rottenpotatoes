class Movie < ActiveRecord::Base
  def self.all_ratings
    %w(G PG PG-13 NC-17 R)
  end

  def has_director?
  	not (director.nil? or director.empty?)
  end

  def self.movies_with_same_directors(movie)
  	where("id <> ? AND director = ?", movie.id, movie.director)
  end
end
