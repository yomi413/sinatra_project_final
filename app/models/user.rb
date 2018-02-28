require './config/environment'

class User < ActiveRecord::Base
  has_many :cars
  has_secure_password
  validates_presence_of :username, :password
  # validates :user_name, presence: true
  # validates :password, presence: true
  # validates :first_name, presence: true
  # validates :last_name, presence: true
  # validates :email, presence: true
end