class Review
    attr_accessor :review, :viewer, :movie, :rating
    
    @@all = []

    def initialize(viewer, movie, rating)
        @viewer = viewer
        @movie = movie
        @rating = rating
        @@all << self
    end

    def self.all
        @@all
    end
    #     - `Review#initialize(viewer, movie, rating)`
#     - `Review` is initialized with a `Viewer` instance, a `Movie` instance, and a rating (number)
#   - `Review#rating`
#     - returns the rating for the `Review` instance
#   - `Review.all`
#     - returns an array of all initialized `Review` instances
    def viewer
        Viewer.all.each do  |viewer| 
            viewer.review == self
        end
    end
#     - `Review#viewer`
#   - returns the `Viewer` instance associated with the `Review` instance
# - `Review#movie`
#   - returns the `Movie` instance associated with the `Review` instance
    def movie
        Movie.all.each{ |movie| movie.review == self}
    end
end
