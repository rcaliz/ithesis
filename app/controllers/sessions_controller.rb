class SessionsController < ApplicationController
  def new
  end

  def create
  	user = login(params[:username], params[:password], params[:remember_me], params[:user_id])
  	if user
      # Redirecciono para la ruta "images"
  		if user.rol == 2
        redirect_back_or_to adviser_path, :notice => "Logged in!"
      elsif user.rol == 1
        redirect_back_or_to student_path, :notice => "Logged in!"
      end
  	else
  		flash.now.alert = "Email or password was invalid"
  		render :new
  	end
  end

  def destroy
  	logout
  	redirect_to root_url, :notice => "Logged out!"
  end
end 