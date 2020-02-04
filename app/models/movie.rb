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
    Review.all.select{ |review| review.movie == self}
  end

  def reviewers
    reviews.map { |review| review.viewer}
  end

  def ratings
    reviews.map { |review| review.rating }
  end

  def average_rating
    sum = ratings.sum.to_f
    len = ratings.count.to_f
    avg = sum / len
  end

  def self.highest_rated
    Review.all.max_by{ |review| review.rating }
  end
end
