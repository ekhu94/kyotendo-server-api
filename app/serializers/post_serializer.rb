class PostSerializer < ActiveModel::Serializer
  attributes :id, :title, :content_text, :content_url, :post_type, :user_id, :forum_id
  belongs_to :forum
  belongs_to :user
end