class VideoSerializer < ActiveModel::Serializer
  attributes :id, :title, :description, :video_url, :thumbnail, :user_id, :game_id, :game, :user
  belongs_to :game
  belongs_to :user
end