require './config/environment'

class Car < ActiveRecord::Base
  belongs_to :user
  validates :make, presence: true
  validates :model, presence: true
  validates :year, presence: true

  def make_model_year
    self.make.capitalize + " " + self.model.capitalize + " " + "(" + self.year.to_s + ")"
  end
  
end