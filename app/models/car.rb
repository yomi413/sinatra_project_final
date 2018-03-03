require './config/environment'

class Car < ActiveRecord::Base
  belongs_to :user
  validates_presence_of :make, :model, :year
end