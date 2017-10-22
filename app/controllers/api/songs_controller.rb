class Api::SongsController < Application Controller

  def create
    @artist = Artist.find(params[:artist_id])
    @song = @artist.songs.new(song_params)

    if song.save
      render status: 201, json: song
    else
      render status: 422, json: {
        errors: artist.errors
      }.to_json
    end
  end

  def destroy
    song = Song.find(params[:id])
    song.destroy

    render status: 200, json: {
      message: "Song deleted",
    }.to_json
  end

  def update
    song = Song.find(params[:id])
    if song.update(song_params)
      render status: 200, json: song
    else
      render status: 422, json: {
        message: "Song could not be updated",
        errors:song.errors
      }.to_json
    end
  end

  private
  def song_params
    song_params = params.require(:song).permit(:name, :year, :album, :artist_id)
  end

end
