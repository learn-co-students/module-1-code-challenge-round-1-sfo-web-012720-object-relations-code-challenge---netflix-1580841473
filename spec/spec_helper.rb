require_relative '../config/environment.rb'

RSpec.configure do |config|
  config.order = :default
end

moonlight = Movie.new( "Moonlight")
antz = Movie.new("Antz")
casablanca = Movie.new("Casablanca")
mm = Viewer.new("moviemaven")
cs = Viewer.new("cinemasam")
gh = Viewer.new("grandmahitchcock")
review_mm_1 = Review.new(mm, moonlight, 5)
review_mm_2 = Review.new(mm, antz, 3)
review_mm_3 = Review.new(mm, casablanca, 4)
review_cs_1 = Review.new(cs, antz, 2)
review_gh_1 = Review.new(gh, casablanca, 5)
