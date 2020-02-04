# require and load the environment file
require_relative '../config/environment.rb'
require_relative '../app/models/movie.rb'
require_relative '../app/models/viewer.rb'
require_relative '../app/models/review.rb'

# call this method to reload your models as you write code
def reload
  load 'config/environment.rb'
end

# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console


tim = Viewer.new("tim")
jane = Viewer.new("jane")

parasite = Movie.new("parasite")
avengers = Movie.new("avengers")
the_irishman = Movie.new("the irishman")

review_1 = Review.new("tim", "parasite", 5)
review_2 = Review.new("jane", "avengers", 0)
review_3 = Review.new("jane", "parasite", 5)
review_4 = Review.new("tim", "the irishman", 4)
review_5 = Review.new("jane","the irishman", 5)
review_6 = Review.new("tim", "avengers", 4)




# ===== WARNING! DO NOT EDIT BELOW THIS LINE ===== #
binding.pry
0
