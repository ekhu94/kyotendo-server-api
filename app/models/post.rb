class Post < ApplicationRecord
  belongs_to :user
  belongs_to :forum
  has_many :comments
  validates :title, presence: true
  validates :post_type, inclusion: %w[discussion image video]
end
