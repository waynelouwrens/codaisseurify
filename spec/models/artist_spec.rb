require 'rails_helper'

RSpec.describe Artist, type: :model do
  describe "validations" do
    it { is_expected.to validate_presence_of(:name) }
  end

  describe "association with song" do
  let!(:artist) { create :artist }
  let!(:song) { create :song, artist: artist }

  it "has many songs" do
    balls = artist.songs.new(name: "Chocolate Salty Balls")
    blue = artist.songs.new(name: "Blue")

    expect(artist.songs).to include(balls)
    expect(artist.songs).to include(blue)
  end

  it "deletes associated songs" do
    expect { artist.destroy }.to change(Song, :count).by(-1)
  end
end
end
