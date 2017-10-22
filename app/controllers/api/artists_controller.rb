class Api::ArtistsController < ApplicationController

   skip_before_action :verify_authenticity_token

  def index
    render status: 200, json: {
      artists: Artist.all
    }.to_json
  end

  def show
    artist = Artist.find(params[:id])

    render status: 200, json: {
      artist: artist
    }.to_json
  end

  def create
    artist = Artist.new(artist_params)

    if artist.save
      render status: 201, json: {
        message: "Artist successfully created",
        artist: artist
      }.to_json
    else
      render status: 422, json: {
        errors: artist.errors
      }.to_json
    end
  end

    private
    def artist_params
      params.require(:artist).permit(:name)
    end
end
