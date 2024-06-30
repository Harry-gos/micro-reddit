class User < ApplicationRecord
    has_many :posts, dependent: :destroy
    has_many :comments, dependent: :destroy
    validates :username, presence: true, length: {minimum: 4, maximum: 12},  uniqueness: true
    validates :email, presence: true, uniqueness: true
    validates :password, presence: true, length: {minimum: 6, maximum: 16}
end
