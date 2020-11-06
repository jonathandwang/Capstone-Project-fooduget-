class User < ApplicationRecord
  has_many :categories 
  has_many :items, through :categories 
  has_secure_password
  validates :email, presence: true, uniqueness: true
end
