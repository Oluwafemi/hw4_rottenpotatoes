class Movie < ActiveRecord::Base
  def self.all_ratings
    %w(G PG PG-13 NC-17 R)
  end

  def has_director?
  	not director.empty?
  end

  def movies_with_same_directors
  	Movie.where("id <> ? AND director = ?", id, director)
  end
end
