class Movie
  attr_accessor :title

  @@all = []

  def initialize(title)
    @title = title
    self.class.all << self
  end

  def self.all
    @@all
  end

  def reviews
    Review.all.select {|movie_review| movie_review.movie == self.title}
  end

  def reviewers
    reviews.map(&:viewer)
  end

  def ratings
    reviews.map(&:rating)
  end

  def average_rating
    sum = ratings.sum
    total_num = ratings.length
    sum / total_num
  end

  def self.all_avg_ratings
    self.all.map(&:average_rating)
  end

  def self.highest_rated
    max_avg_rating = all_avg_ratings.max
    self.all.select {|movie| movie.average_rating == max_avg_rating}
  end
end
