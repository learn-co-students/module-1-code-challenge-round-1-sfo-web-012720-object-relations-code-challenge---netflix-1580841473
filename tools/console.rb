# require and load the environment file
require_relative '../config/environment.rb'

# call this method to reload your models as you write code
def reload
  load 'config/environment.rb'
end

# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

joker = Movie.new("The Joker")
parasite = Movie.new("Parasite")
# Movie.new()
# Movie.new()
# Movie.new()

me = Viewer.new("me")
friend = Viewer.new("friend")
# Viewer.new()
# Viewer.new()
# Viewer.new()

review1 = Review.new("me", "Parasite", 5)
review1 = Review.new("me", "The Joker", 4)
review2 = Review.new("friend", "Parasite", 3)
review2 = Review.new("friend", "The Joker", 2)


# ===== WARNING! DO NOT EDIT BELOW THIS LINE ===== #
binding.pry
0
