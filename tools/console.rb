# require and load the environment file
require_relative '../config/environment.rb'

# call this method to reload your models as you write code
def reload
  load 'config/environment.rb'
end

# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console
term = Movie.new("Terminator2")
bat = Movie.new("Batman")
ace = Movie.new("Ace_Ventua")
bob = Viewer.new("User_Bob")
rod = Viewer.new("User_Rod")
jane = Viewer.new("User_Jane")

Review.new(bob, term, 10)
Review.new(rod, bat, 9)
Review.new(jane, ace, 7)



# ===== WARNING! DO NOT EDIT BELOW THIS LINE ===== #
binding.pry
0
