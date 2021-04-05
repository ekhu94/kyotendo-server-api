class User < ApplicationRecord
    has_secure_password
    validates :email_address, presence: true, uniqueness: true, email_format: {message: 'is not valid. '}
end
