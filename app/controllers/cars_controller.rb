class CarsController < ApplicationController

  get '/cars' do 
    @user = User.find_by(id: session[:user_id])
    erb :'/cars/cars'
  end 

  get '/cars/new' do
    erb :'/cars/new_car'
  end

  post '/cars' do
    @car = Car.new(make: params[:make], model: params[:model], year: params[:year], user: current_user)

    if @car.save
      redirect to '/cars'
    end
  end

  get '/cars/:id' do
    @car = Car.find_by(id: params[:id])
    erb :'/cars/show_car'
  end

  get '/cars/:id/edit' do
    @car = Car.find_by(id: params[:id])
    erb :'/cars/edit_car'
  end

  post '/cars/:id' do
    @car = Car.find_by(id: params[:id])

    if @car
      redirect to '/cars'
    end


  end

end