require './config/environment'

class User < ActiveRecord::Base
  has_many :cars
  has_secure_password
  validates_presence_of :username, :password
end