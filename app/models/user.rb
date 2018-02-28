class User < ActiveRecord::Base
  has_many :cars
  has_secure_password
  validates :user_name, presence: true
  validates :password, presence: true
end