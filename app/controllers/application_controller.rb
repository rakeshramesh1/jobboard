class ApplicationController < ActionController::Base
  protect_from_forgery

  private
  def check_login
  	if ! session[:user_id]
  		flash[:status]=FALSE
   		flash[:alert]="you n2eed to be logged in first"

  		redirect_to login_path
  	else
  		user = User.find(session[:user_id])
  		$user_first_name=user.first_name
  		
  	end  	
  end

end
