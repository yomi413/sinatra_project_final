require './config/environment'

class User < ActiveRecord::Base
  has_many :cars
  has_secure_password
  validates_presence_of :full_name, :username, :password

  def first_name
    self.full_name.split[0]
  end
end