class User < ApplicationRecord
    has_many :posts
    has_many :forums, through: :posts
    has_many :comments
    has_many :videos
    has_many :games, through: :videos
    has_secure_password
    validates :username, uniqueness: { case_sensitive: false }
    validates :email_address, presence: true, uniqueness: true, email_format: {message: 'is not valid. '}
end
