class UserSerializer < ActiveModel::Serializer
  attributes :id, :username, :email_address
  has_many :posts
  has_many :comments
  has_many :forums, through: :posts
end
