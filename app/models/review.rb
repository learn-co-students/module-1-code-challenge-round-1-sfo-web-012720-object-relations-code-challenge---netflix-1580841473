class Review

    attr_accessor :viewer, :movie, :rating
    #attr_reader :viewer, :movie

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

    def viewer
        @viewer
    end

    def movie
        @movie
    end
end
