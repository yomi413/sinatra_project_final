class UsersController < ApplicationController

  get '/signup' do 
    # if logged_in?
    #   redirect to '/cars'
    # else
      erb :'/users/signup'
    # end
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
    if logged_in?
      redirect to '/cars'
    else
      erb :'/users/login'
    end
  end

  post '/login' do 
    @user = User.find_by(username: params[:username])
    if !@user.nil? && @user.authenticate(params[:password])
      session[:user_id] = @user.id
      redirect to '/cars'
    else
      redirect to '/login'
    end
  end

  get '/logout' do
    session.clear
    redirect to '/'
  end

end