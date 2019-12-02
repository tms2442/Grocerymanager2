class SessionsController < ApplicationController

  skip_before_action :authorized, only: [:new, :create, :welcome]

  def new
  end

  def create
    @user = User.find_by(username: params[:username])
   if @user && @user.authenticate(params[:password])
      session[:user_id] = @user.id
      session[:username] = @user.username
      if @user.username == 'admin'
         redirect_to '/authorized'
      else
         redirect_to '/mainpage'
      end
   else
      redirect_to '/login'
   end
  end

  def login
  end

  def welcome
  end

  def mainpage
  end


  def page_requires_login

  end

end
