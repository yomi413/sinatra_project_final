class UsersController < ApplicationController

  get '/signup' do 
    if logged_in?
      redirect to '/cars'
    else
      erb :'/users/signup'
    end
  end

  post '/signup' do 
    @user = User.new(username: params[:username], password: params[:password], first_name: params[:first_name], last_name: params[:last_name], email: params[:email])

    if @user.save
      session[:user_id] = @user.id 
      redirect to '/cars'
    else
      redirect to '/signup'
    end
  end



end