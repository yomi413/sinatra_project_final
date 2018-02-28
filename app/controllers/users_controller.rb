class UsersController < ApplicationController

  get '/signup' do 
    erb :'/users/signup'
  end

  post '/signup' do 
    @user = User.new(username: params[:username], password: params[:password], first_name: params[:first_name], last_name: params[:last_name], email: params[:email])

    if @user.save
      session[:user_id] = @user.id 
      redirect to '/cars'
    end
  end

end