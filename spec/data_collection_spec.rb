
# #### Movie

# - `Movie#average_rating`
#   - returns the average of all ratings for the `Movie` instance
#   - to average ratings, add all ratings together and divide by the total number of ratings.
# - `Movie.highest_rated`
#   - returns the `Movie` instance with the highest average rating.

require 'spec_helper'

context 'Data Collection:' do
  describe Viewer do

    viewer = Viewer.new('siskel')
    spinal_tap = Movie.new('Spinal Tap')
    supersize = Movie.new('Supersize Me')
    original_review = Review.new(viewer, spinal_tap, 4)

    describe '#reviewed_movie?(movie)' do
      it 'only takes a Movie instance as an argument' do

      end

      context 'if the Viewer has reviewed this Movie (if there is a Review instance that has this Viewer and Movie)' do
        it 'returns true' do
          expect(viewer.reviewed_movie?(spinal_tap)).to eq(true)
        end
      end
      context 'if the Viewer hasn\'t reviewed this movie' do
        it 'returns false' do
          expect(viewer.reviewed_movie?(supersize)).to eq(false)
        end
      end
    end

    describe '#rate_movie(movie, rating)' do
      viewer = Viewer.all.find{|viewer| viewer.username == 'siskel'}
      new_movie = Movie.new('Pocahontas')

      it 'accepts a movie instance and a number:rating as arguments' do
        
      end

      context 'if the Viewer instance and the passed Movie instance are not already associated' do
        it 'creates a new Review instance' do
          original_viewer_review_count = viewer.reviews.length
          viewer.rate_movie(new_movie, 4)
          new_viewer_review_count = viewer.reviews.length
          expect(new_viewer_review_count - original_viewer_review_count).to eq(1)
        end
      end

      context 'if this Viewer has already reviewed this Movie' do
        it 'assigns the new rating to the existing Review instance' do
          original_viewer_review_count = viewer.reviews.length
          viewer.rate_movie(spinal_tap, 5)
          new_viewer_review_count = viewer.reviews.length
          expect(original_review.rating).to eq(5)
        end
      end
    end
  end

  describe Movie do
    seven_samurai = Movie.new("Seven Samurai")
    grease = Movie.new("Grease")
    rating_array = []
    5.times do
      rating = rand(1..5)
      rating_array << rating
      viewer = Viewer.all.sample
      Review.new(viewer, seven_samurai, rating)
      Review.new(viewer, grease, 6)
    end
    average_rating = rating_array.inject{|sum, el| sum + el }.to_f / rating_array.size

    describe '#average_rating' do
      it  'returns the average of all ratings for the `Movie` instance by adding all ratings together and dividing by the total number of ratings' do
        expect(seven_samurai.average_rating).to eq(average_rating)
      end
    end

    describe '.highest_rated' do
      it 'returns the `Movie` instance with the highest average rating' do
        expect(Movie.highest_rated).to eq(grease)
      end
    end
  end
end
