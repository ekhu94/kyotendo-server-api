class PostSerializer < ActiveModel::Serializer
  attributes :id, :title, :content, :post_type, :user_id, :forum_id
  belongs_to :forum
  belongs_to :user
end