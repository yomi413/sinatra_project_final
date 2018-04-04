class CarsController < ApplicationController
  use Rack::Flash

  get '/cars/index' do
    @cars = Car.all
    erb :'/cars/index'
  end

  get '/cars' do 
    @user = User.find_by(id: session[:user_id])

    if logged_in?
      erb :'/cars/cars'
    else
      redirect to '/login'
    end
  end 

  get '/cars/new' do
    @car = Car.find_by(make: params[:make])

    if logged_in?
      erb :'/cars/new_car'
    else
      redirect to '/login'
    end
  end

  post '/cars' do
    # @car = Car.new(make: params[:make], model: params[:model], year: params[:year], user: current_user)
    @car = current_user.cars.build(make: params[:make], model: params[:model], year: params[:year])
    if @car.save
      redirect to '/cars'
    else
      flash[:message] = "Please fill in the blanks. All information in required."
      redirect to '/cars/new'
    end
  end

  get '/cars/:id' do
    @car = Car.find_by(id: params[:id])

    if logged_in?
      erb :'/cars/show_car'
    else
      redirect to '/login'
    end
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
    @car = current_user.cars.find_by(id: params[:id])
    
    if @car && @car.update(make: params[:make], model: params[:model], year: params[:year])
      redirect to '/cars'
    else
      flash[:message] = "You are not allowed to make changes to this entry."
      redirect to "/cars/#{params[:id]}/edit"
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