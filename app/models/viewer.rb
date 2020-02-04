class Viewer
  attr_accessor :username, :review, :movie

  @@all = []

  def initialize(username)
    @username = username
    @@all << self
  end

  def self.all
    @@all
  end
  
  # - `Viewer#initialize(username)`
#   - `Viewer` is initialized with a username (string)
#   - username **can be** changed after the Viewer is initialized
# - `Viewer#username`
#   - returns the Viewer's username
# - `Viewer.all`
#   - returns an array of all the Viewer instances that have been initialized

#almost!
  def reviews
    Review.all.select do |review| 
      review.viewer == self
    end
  end

#   - `Viewer#reviews`
#   - returns an array of `Review` instances associated with the `Viewer` instance.
# - `Viewer#reviewed_movies`
#   - returns an array of `Movie` instances reviewed by the `Viewer` instance.


  def reviewed_movies
    Movie.all.each do |movie| 
      movie.review == self
    end
  end

#   - `Viewer#reviewed_movie?(movie)`
#   - a `Movie` instance is the only argument
#   - returns `true` if the `Viewer` has reviewed this `Movie` (if there is a `Review` instance that has this `Viewer` and `Movie`), returns `false` otherwise
  def reviewed_movie?(movie)

  end

# - `Viewer#rate_movie(movie, rating)`
#   - a `Movie` instance and a rating (number) are passed in as arguments
#   - if the `Viewer` instance and the passed `Movie` instance are _not_ already associated, this method should create a new `Review` instance
#   - if this `Viewer` has already reviewed this `Movie`, assigns the new rating to the existing `Review` instance

  def rate_movie(movie, rating)

  end
end
