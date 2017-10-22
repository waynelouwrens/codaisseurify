class ArtistSerializer < ActiveModel::Serializer
  attributes :name

  has_many :songs
end
