class User < ApplicationRecord
    has_secure_password
    validates :Email, presence: true, uniqueness: true
end
