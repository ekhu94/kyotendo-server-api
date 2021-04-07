class Forum < ApplicationRecord
    has_many :posts, dependent: :destroy
    has_many :users, through: :posts
    validates :slug, uniqueness: true
    validates :name, uniqueness: true
end
