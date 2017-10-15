class CreateSongs < ActiveRecord::Migration[5.1]
  def change
    create_table :songs do |t|
      t.string :name
      t.integer :year
      t.string :album

      t.timestamps
    end
  end
end
