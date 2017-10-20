class AddSongToArtist < ActiveRecord::Migration[5.1]
  def change
    add_reference :artists, :song, foreign_key: true
  end
end
