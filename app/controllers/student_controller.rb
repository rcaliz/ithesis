class StudentController < ApplicationController
  before_filter :require_login

  def index
  	@student = User.find(session[:user_id])
    
    if @student.rol == 2
    	redirect_to adviser_path
    elsif @student.rol == 1
    	respond_to do |format|
      		format.html # show.html.erb
      		format.json { render json: @student }
    	end
    end
    
  end

end
