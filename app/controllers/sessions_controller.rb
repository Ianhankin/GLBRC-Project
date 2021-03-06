class SessionsController < ApplicationController
  def new
    
  end
  
  def create
    user=User.find_by(name: params[:session][:name].downcase)
    if user && user.authenticate(params[:session][:password])
      log_in user
      redirect_to home_path
    else
      flash.now[:danger]="Invalid Username and Password"
      render 'new'
    end
  end
end
