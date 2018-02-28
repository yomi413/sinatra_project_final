class UsersController < ApplicationController

  get '/signup' do 
    erb :'/users/signup'
  end

  post '/signup' do 
    # @user = User.new()
  end

end