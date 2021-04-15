class GameSerializer < ActiveModel::Serializer
  attributes :id, :name, :rating, :img_url, :release_date, :slug, :videos
  has_many :videos
  has_many :users, through: :videos
end