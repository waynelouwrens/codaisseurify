class SongsController < ApplicationController

def index
  @artist = Artist.find(params[:artist_id])
  @songs = @artist.songs
end

def show
  @artist = Artist.find(params[:artist_id])
  @song = @artist.songs.find(params[:id])
end

def new
  @artist = Artist.find(params[:artist_id])
  @song = @artist.songs.build
end

def edit
  @artist = Artist.find(params[:artist_id])
  @song = @artist.songs.find(params[:id])
end

def create
  song_params = params.require(:song).permit(:name, :year, :album, :artist_id)
  @artist = Artist.find(params[:artist_id])
  @song = @artist.songs.new(song_params)

    respond_to do |format|
    if @song.save
      format.html {redirect_to @artist, notice: "New Song Added!"}
      format.json {render :show, status: :created, location: @artist }
      format.js
    else
      format.html {render @artist.id, notice: "Song not Added, Please try again"}
      format.json {render json: @artist.errors, status: :unprocessable_entity }
      format.js
    end
  end
end

  def update
    song_params = params.require(:song).permit(:name, :year, :album, :artist_id)
    @song = Song.find(params[:id])
    @song.update_attributes(song_params)
    redirect_to artist_song_path(@song), notice: "Song Updated"
  end

def destroy
    @artist = Artist.find(params[:artist_id])
    @song = @artist.songs.find(params[:id])
    @song.destroy

    redirect_to artists_path
end
end
