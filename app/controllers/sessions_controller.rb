class SessionsController < ApplicationController
  def new

  end

  def create
  	user= User.validate_login(
  		params[:session][:email], 
  		params[:session][:password]
  		)

  	if user
  		session[:user_id]= user.id
  		$user_id=user.id
  		#redirect_to '/users/index'
  		redirect_to :controller => 'users'
  	else
  		flash[:status] = FALSE
  		flash[:alert] = "invalid user name and password"

  		redirect_to login_path
  	end

  end

  def register
    redirect_to "/register"  
  end

  def destroy
  	session[:user_id]=nil
  	redirect_to login_path
  end

end
