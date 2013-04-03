class ArtefactsController < ApplicationController
  before_filter :require_login
  
  def index
    @user = current_user
    
    if session[:reunion_id] == nil
      @reunion = Reunion.find(params[:reunion_id])
      session[:reunion_id] = @reunion.id
    elsif
      @reunion = Reunion.find(session[:reunion_id])
    end
    
    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @reunion }
    end
  end

end
