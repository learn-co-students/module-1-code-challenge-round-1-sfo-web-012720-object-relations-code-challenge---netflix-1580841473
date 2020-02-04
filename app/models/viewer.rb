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
    Review.all.select{ |review| review.viewer == self}
  end

  def reviewed_movies
    reviews.map {|review| review.movie}
  end

  def reviewed_movie?(movie)
    Review.all.find do |review|
      if review.viewer == self
        return true
      else
        return false
      end
    end
  end

  def rate_movie(movie, rating)
    Review.new(self, movie, rating)
  end
end
