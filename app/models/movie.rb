class Movie
  attr_accessor :title, :review, :rating, :viewer

  @@all = []

  def initialize(title)
    @title = title
    @@all << self
  end

  def self.all
    @@all
  end
#   - `Movie#initialize(title)`
#   - `Movie` is initialized with a title (string)
#   - title **can be** changed after the `Movie` is initialized
# - `Movie#title`
#   - returns the `Movie`'s title
# - `Movie.all`
#   - returns an array of all the `Movie` instances that have been initialized

# almost!
  def reviews
    Movie.all.each do |review|
      review.movie == self
    end
  end

  def reviewed_movies
    Movie.all.each do |movie| 
      movie.review == self
    end
  end
# - `Movie#reviews`
#   - returns an array of all the `Review` instances for the `Movie`.
# - `Movie#reviewers`
#   - returns an array of all of the `Viewer` instances that reviewed the `Movie`.

  def average_rating

  end
# - `Movie#average_rating`
#   - returns the average of all ratings for the `Movie` instance
#   - to average ratings, add all ratings together and divide by the total number of ratings.
# - `Movie.highest_rated`
#   - returns the `Movie` instance with the highest average rating.
  def self.highest_rated

  end
end
