class SongSerializer < ActiveModel::Serializer
  attributes :name, :year, :album

  belongs_to :artist
end
