class ArtefactsController < ApplicationController
  before_filter :require_login
  
  def index
    @user = current_user
    
    @reunion = Reunion.find(session[:reunion_id])

    if @reunion == nil
      @reunion = Reunion.find(params[:reunion_id])
      session[:reunion_id] = @reunion.id  
    end
    
    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @reunion }
    end
  end

end
