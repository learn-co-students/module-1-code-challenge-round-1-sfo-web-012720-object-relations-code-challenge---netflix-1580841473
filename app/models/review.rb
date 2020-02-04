class Review
    attr_reader :viewer, :movie
    attr_accessor :rating

    @@reviews = []

    def initialize(viewer, movie, rating)
        @viewer = viewer
        @movie = movie
        @rating = rating
        self.class.all << self
    end

    def self.all
        @@reviews
    end

end
