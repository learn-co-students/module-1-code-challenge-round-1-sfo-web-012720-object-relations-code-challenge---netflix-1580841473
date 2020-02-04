# require and load the environment file
require_relative '../config/environment.rb'

# call this method to reload your models as you write code
def reload
  load 'config/environment.rb'
end

# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console
Review.new("Viewer_Dan","Terminator",10)
Review.new("Viewer_Jake","Predator",9)
Review.new("Viewer_Zach","Avengers",7)
Movie.new("Terminator2")
Movie.new("Batman")
Movie.new("Ace_Ventua")
Viewer.new("User_Bob")
Viewer.new("User_Rod")
Viewer.new("User_Jane")




# ===== WARNING! DO NOT EDIT BELOW THIS LINE ===== #
binding.pry
0
