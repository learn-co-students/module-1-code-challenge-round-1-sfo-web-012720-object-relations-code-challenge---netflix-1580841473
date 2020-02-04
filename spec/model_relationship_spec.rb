require 'spec_helper'

context 'Model Relationship:' do
  describe Review do
    moonlight = Movie.new( "Moonlight")
    mm = Viewer.new("moviemaven")
    review_mm_1 = Review.new(mm, moonlight, 5)

    it "#viewer returns the Viewer instance associated with the Review instance" do
      expect(review_mm_1.instance_variable_get(:@viewer)).to eq(mm)
    end

    it "#movie returns the Movie instance associated with the Review instance" do
      expect(review_mm_1.instance_variable_get(:@movie)).to eq(moonlight)
    end
  end

  describe Viewer do
    antz = Movie.new("Antz")
    casablanca = Movie.new("Casablanca")
    cs = Viewer.new("cinemasam")
    review_cs_1 = Review.new(cs, antz, 2)
    review_cs_2 = Review.new(cs, casablanca, 5)

    it "#reviews returns an array of Review instances associated with the Viewer instance" do
      expect(cs.reviews).to eq([review_cs_1, review_cs_2])
    end

    it "#movies returns an array of Movie instances reviewed by the Viewer instance" do
      expect(cs.movies).to eq([antz, casablanca])
    end
  end

  describe Movie do
    gh = Viewer.new("grandmahitchcock")
    eyeswideshut = Movie.new("Eyes Wide Shut")
    review_gh_1 = Review.new(gh, eyeswideshut, 4)

    it "#reviews returns an array of all the Review instances for the Movie" do
      expect(eyeswideshut.reviews).to eq([review_gh_1])
    end

    it "#reviewers returns an array of all of the Viewer instances that reviewed the Movie" do
      expect(eyeswideshut.reviewers).to eq([gh])
    end
  end
end
