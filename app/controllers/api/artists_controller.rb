class Api::ArtistsController < ApplicationController

   skip_before_action :verify_authenticity_token

  def index
    artist = Artist.all
    render status: 200, json: artist
  end

  def show
    artist = Artist.find(params[:id])
    render status: 200, json: artist
  end

  def create
    artist = Artist.new(artist_params)

    if artist.save
      render status: 200, json: artist
    else
      render status: 422, json: {
        errors: artist.errors
      }.to_json
    end
  end

  def destroy
    artist = Artist.find(params[:id])
    artist.destroy

    render status: 200, json: {
      message: "Artist deleted"
    }.to_json
  end

  def update
    artist = Artist.find(params[:id])
    if artist.update(artist_params)
      render status: 200, json: artist
    else
      render status: 500, json: {
        message: "Artist could not be updated",
        errors:artist.errors
      }.to_json
    end
  end

    private
    def artist_params
      params.require(:artist).permit(:name)
    end
end
