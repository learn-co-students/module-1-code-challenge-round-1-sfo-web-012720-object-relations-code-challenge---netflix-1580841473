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
    if 
      return true
    else 
      return false
    end
  end

  def rate_movie(movie,rating)
    if viewer.movie != self
      Review.new(self, movie, rating)
    else
      ## code here
    end
  end


 
end
