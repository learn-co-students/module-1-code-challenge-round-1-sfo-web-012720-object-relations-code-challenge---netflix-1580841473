# require and load the environment file
require_relative '../config/environment.rb'

# call this method to reload your models as you write code
def reload
  load 'config/environment.rb'
end

# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console


movie1 = Movie.new("Apes")
movie2 = Movie.new("something")
movie3 = Movie.new("WhatThe")

viewer1 = Viewer.new("me")
viewer2 = Viewer.new("ma")

review1 = Review.new(viewer1, movie1, 6)
review2 = Review.new(viewer2, movie1, 7)

review3 = Review.new(viewer1, movie2, 2)
review4 = Review.new(viewer2, movie2, 0)

review5 = Review.new(viewer1, movie3, 9)
# ===== WARNING! DO NOT EDIT BELOW THIS LINE ===== #
binding.pry
0
