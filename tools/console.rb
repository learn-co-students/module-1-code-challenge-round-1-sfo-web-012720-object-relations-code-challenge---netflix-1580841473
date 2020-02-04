# require and load the environment file
require_relative '../config/environment.rb'

# call this method to reload your models as you write code
def reload
  load 'config/environment.rb'
end

# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console


movie1 = Movie.new("Big something")
movie2 = Movie.new("oh wow")
movie3 = Movie.new("look up")
movie4 = Movie.new("idk")
movie5 = Movie.new("something funnny")

viewer1 = Viewer.new("Tomm001")
viewer2 = Viewer.new("000000-0000000")
viewer3 = Viewer.new("just me")
viewer4 = Viewer.new("oh my")
viewer5 = Viewer.new("reviewguy007")
viewer6 = Viewer.new("reviewguy008")
viewer7 = Viewer.new("reviewguy009")
viewer8 = Viewer.new("reviewguy010")

review1 = Review.new(viewer1, movie1, 5)
review1 = Review.new(viewer4, movie1, 5)
review1 = Review.new(viewer5, movie1, 5)
review2 = Review.new(viewer2, movie1, 5)    
review3 = Review.new(viewer2, movie2, 3)
review4 = Review.new(viewer3, movie1, 5)
review5 = Review.new(viewer4, movie1, 5)
review6 = Review.new(viewer4, movie3, 5)
review7 = Review.new(viewer4, movie4, 3)
review8 = Review.new(viewer4, movie5, 4)
review9 = Review.new(viewer6, movie1, 5)
review9 = Review.new(viewer7, movie1, 5)
review9 = Review.new(viewer8, movie1, 5)





# ===== WARNING! DO NOT EDIT BELOW THIS LINE ===== #
binding.pry
0
