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

  def reviews
    Review.all.select {|user_review| user_review.viewer == self}
  end

  def reviewed_movies
    reviews.map(&:movie)
  end

  def reviewed_movie?(movie)
    reviewed_movies.any? {|movie_review| movie_review.title = movie}
  end

  def rate_movie(movie, rating)
    if reviewed_movie?(movie)
      rated_movie = Review.all.select {|rated_movie| rated_movie.title == movie.title}
      rated_movie.rating = rating
    else
      Review.new(self, movie, rating)
    end
  end
end
