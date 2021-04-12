class CommentSerializer < ActiveModel::Serializer
  attributes :id, :content, :post_id, :user_id, :user, :created_at
  belongs_to :post
  belongs_to :user
end