require './config/environment'

class User < ActiveRecord::Base
  has_many :cars
  has_secure_password
  validates :full_name, presence: true
  validates :username, presence: true, uniqueness: true
  validates :password, presence: true, uniqueness: true

  def first_name
    self.full_name.split[0]
  end
end