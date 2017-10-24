require 'rails_helper'

RSpec.describe Artist, type: :model do
  describe "validations" do
    it { is_expected.to validate_presence_of(:name) }
  end

  describe "association with song" do
  let!(:artist) { create :artist }
  let!(:song) { create :song, artist: artist }

  it "has many songs" do
    song1 = artist.songs.new(name: "Yellow")
    song2 = artist.songs.new(name: "Blue")

    expect(artist.songs).to include("Yellow")
    expect(artist.songs).to include("Blue")
  end

  it "deletes associated songs" do
    expect { artist.destroy }.to change(Song, :count).by(-1)
  end
end
end
