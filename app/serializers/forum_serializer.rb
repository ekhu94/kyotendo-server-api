class ForumSerializer < ActiveModel::Serializer
  attributes :id, :name, :slug
  has_many :posts
  has_many :users, through: :posts
end