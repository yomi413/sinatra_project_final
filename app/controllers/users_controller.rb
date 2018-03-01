class UsersController < ApplicationController
  use Rack::Flash

  get '/signup' do 
    erb :'/users/signup'
  end

  post '/signup' do 
    @user = User.new(first_name: params[:first_name], last_name: params[:last_name], username: params[:username], password: params[:password])

    if @user.save
      session[:user_id] = @user.id
      redirect to '/cars'
    else
      redirect to '/signup'
    end
  end

  get '/login' do
    erb :'/users/login'
  end

  post '/login' do 
    @user = User.find_by(username: params[:username])
    if !@user.nil? && @user.authenticate(params[:password])
      session[:user_id] = @user.id
      redirect to '/cars'
    else
      flash[:message] = "Username and/or password not valid. Try again or"
      redirect to '/login'
    end
  end

  get '/logout' do
    session.clear
    erb :'/users/logout'
  end



end