require 'factory_girl'

#FactoryGirl.define do
 # factory :movie do
  #  title 'Star Wars'
   # rating 'PG'
    #director 'George Lucas'
    #release_date '1977-05-25'
  #end
#end

Factory.define :movie do |movie|
  movie.title  'Alien'
  movie.rating  'R'
  movie.release_date '1979-05-25'
end

