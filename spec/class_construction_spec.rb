require 'spec_helper'

context 'Class Construction:' do
  describe Movie do
    it "#initialize initializes an instance of Movie with a string:title" do
      title = "The Shawshank Redemption"
      shawshank = Movie.new(title) 
      expect(shawshank.instance_variable_get(:@title)).to eq(title)
    end

    it "has a title that can be changed after initialization" do
      muppets = Movie.new("The Muppet Movie") 
      new_title = "The Muppets Take Manhattan"
      muppets.title = "The Muppets Take Manhattan"
      expect(muppets.title).to eq(new_title)
    end

    it ".all returns array of all Movie instances that have been initialized" do
      count = Movie.all.length
      expect(Movie.all.length).to eq(count)
    end
  end

  describe Viewer do
    it "#initialize initializes an instance of Viewer with a string:username" do
      username = "moviemaven"
      new_viewer = Viewer.new(username)
      expect(new_viewer.instance_variable_get(:@username)).to eq(username)
    end

    it "has a username that can be written and read after initialization" do
      username = "buffFilmBuff89"
      bfb = Viewer.new(username)
      new_username = "buffestFilmBuffet"
      bfb.username = new_username
      expect(bfb.instance_variable_get(:@username)).to eq(new_username)
    end

    it ".all returns array of all Viewer instances that have been initialized" do
      count = Viewer.all.length
      expect(Viewer.all.length).to eq(count)
    end
  end

  describe Review do
    it "#initialize initializes an instance of Review with an object:Viewer, object: Movie, and a number:rating." do
      viewer = Viewer.all.first
      movie = Movie.all.first
      rating = rand(1..5)
      new_review = Review.new(viewer, movie, rating)
      expect(new_review.instance_variable_get(:@viewer)).to eq(viewer)
      expect(new_review.instance_variable_get(:@movie)).to eq(movie)
      expect(new_review.instance_variable_get(:@rating)).to eq(rating)
    end

    it "#rating returns the rating for the Review instance" do
      viewer = Viewer.all.first
      movie = Movie.all.first
      rating = rand(1..5)
      new_review = Review.new(viewer, movie, rating)
      expect(new_review.instance_variable_get(:@rating)).to eq(rating)
    end

    it ".all returns array of all Review instances that have been initialized" do
      count = Review.all.length
      expect(Review.all.length).to eq(count)
    end
  end
end
