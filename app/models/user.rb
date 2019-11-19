class User < ApplicationRecord
  validates :name, presence: true, length: { minimum: 6 }
  validates :email, presence: true, format: { with: /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i, on: :create }
  validates :password, presence: true, length: { minimum: 6 }  
end
