class UsersController < ApplicationController

  before_filter :check_login, :only => [:index]
  def index
    @user = User.find(session[:user_id])
    session[:Empid] = @user.email
    session[:usertype] = @user.user_type
    if session[:usertype] == "Employee"
      redirect_to "/employee"
    else
      redirect_to "/employer"
    end

  end

  def empr_index
    
    
      @user = User.find_by_email(session[:Empid])
      @employer = Employer.find_by_EmpId(session[:Empid]) 
      respond_to do |format|
        format.html #empr_index.html.erb
        format.json { render json: @user}
      end
    

  end

def emp_index

      @employee = Employee.find_by_EmpId(session[:Empid]) 
      @user = User.find_by_email(session[:Empid])
      respond_to do |format|
        format.html #emp_index.html.erb
        format.json { render json: @user}
      end

end



  def show
  end

  def new
  	@user = User.new

  end
  def logout
    session[:Empid]=nil
    session[:user_id]=nil
    redirect_to login_path
  end

  def create
  	@user = User.new(params[:user])
  	if @user.save
  		flash[:status]=TRUE
  		flash[:alert]= "COngrats.. u hav registered"
  	else
  		flash[:status] = FALSE
  		flash[:alert] = @user.errors.full_messages
    end	
    session[:Empid] = @user.email
    if @user.user_type == "Employer"
    redirect_to "/employer"
    else
    redirect_to new_employee_path
    end

   end

end
