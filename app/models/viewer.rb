class Viewer
  attr_accessor :username

  @@all = []

  def initialize(username)
    @username = username
    self.class.all << self
  end

  def self.all
    @@all
  end
  
  def reviewed_movie?(movie)
    # if 
    #   return true
    # else 
    #   return false
    # end
  end

  # - if the `Viewer` instance and the passed `Movie` instance are _not_ already associated, 
  # this method should create a new `Review` instance
  # - if this `Viewer` has already reviewed this `Movie`, 
  # assigns the new rating to the existing `Review` instance
  def rate_movie(movie, rating)

    viewer_reviews = Review.all.select{ |review| review.viewer == self }
    viewer_movie_review = viewer_reviews.find{ |review| review.movie == movie}
    # viewer_movies = viewer_reviews.map{ |review| review.movie }

    if viewer_movie_review
      viewer_movie_review.rating = rating
    else
      Review.new(self, movie, rating)
    end
  end

  def reviews
    Review.all.select{ |review| review.viewer == self }
  end
end
