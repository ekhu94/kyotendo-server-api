class PostSerializer < ActiveModel::Serializer
  attributes :id, :title, :content, :img_url, :user_id, :forum_id
  belongs_to :forum
  belongs_to :user
end