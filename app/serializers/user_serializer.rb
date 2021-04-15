class UserSerializer < ActiveModel::Serializer
  attributes :id, :username, :email_address, :created_at
  has_many :posts
  has_many :comments
  has_many :forums, through: :posts
  has_many :videos
  has_many :games, through: :videos
end
