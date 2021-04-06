class GameSerializer < ActiveModel::Serializer
  attributes :id, :name, :rating, :img_url, :release_date
  has_many :videos
  has_many :users, through: :videos
end