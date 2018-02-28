require './config/environment'

class Car < ActiveRecord::Base
  belongs_to :user
end