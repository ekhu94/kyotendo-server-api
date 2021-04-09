class PostSerializer < ActiveModel::Serializer
  attributes :id, :title, :content_text, :content_url, :post_type, :upvotes, :user_id, :forum_id
  belongs_to :forum
  belongs_to :user
  has_many :comments
end