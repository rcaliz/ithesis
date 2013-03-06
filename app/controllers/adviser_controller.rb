class AdviserController < ApplicationController
  before_filter :require_login 
  
  def index
  	@adviser = User.find(session[:user_id])
    
    if @adviser.rol == 1
    	redirect_to student_path
    end
    
  end

end
