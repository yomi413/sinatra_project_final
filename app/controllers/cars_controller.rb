class CarsController < ApplicationController

  get '/cars' do 
    @user = User.find_by(id: session[:user_id])
    erb :'/cars/cars'
  end 

  get '/cars/new' do
    erb :'/cars/new_car'
  end

end