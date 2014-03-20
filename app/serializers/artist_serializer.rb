class ArtistSerializer < ActiveModel::Serializer
  attributes :id, :name, :bio, :picture_url, :songs
  has_many :albums
end