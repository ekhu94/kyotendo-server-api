class Post < ApplicationRecord
  belongs_to :user
  belongs_to :forum
  has_many :comments
  # has_many :users, through: :comments
  validates :title, presence: true
  validates :post_type, inclusion: %w[discussion image video]
end
