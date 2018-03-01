class CarsController < ApplicationController

  get '/cars' do 
    @user = User.find_by(id: session[:user_id])
    erb :'/cars/cars'
  end 

  get '/cars/new' do
    @car = Car.find_by(make: params[:make])
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

    if logged_in?
      erb :'/cars/edit_car'
    else
      redirect to '/login'
    end
  end

  patch '/cars/:id' do
    @car = Car.find_by(id: params[:id])
    # binding.pry
    if @car && @car.update(make: params[:make], model: params[:model], year: params[:year])
      redirect to '/cars'
    else
      redirect to "/cars/#{@car.id}/edit"
    end

  end

  get '/cars/:id/delete' do
    @car = current_user.cars.find_by(id: params[:id])

    if @car && logged_in?
      @car.destroy
      redirect to '/cars'
    else
      redirect to '/login'
    end
  end



end