class ThesesController < ApplicationController
  # GET /theses
  # GET /theses.json
  def index
    @theses = Thesis.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @theses }
    end
  end

  # GET /theses/1
  # GET /theses/1.json
  def show
    @thesis = Thesis.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @thesis }
    end
  end

  # GET /theses/new
  # GET /theses/new.json
  def new
    @thesis = Thesis.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @thesis }
    end
  end

  # GET /theses/1/edit
  def edit
    @thesis = Thesis.find(params[:id])
  end

  # POST /theses
  # POST /theses.json
  def create
    
    @adviser = Adviser.find(current_user.id)

    @thesis = @adviser.theses.create(params[:thesis])

    respond_to do |format|
      if @thesis.save
        format.html { redirect_to @thesis, notice: 'Thesis was successfully created.' }
        format.json { render json: @thesis, status: :created, location: @thesis }
      else
        format.html { render action: "new" }
        format.json { render json: @thesis.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /theses/1
  # PUT /theses/1.json
  def update
    @thesis = Thesis.find(params[:id])

    respond_to do |format|
      if @thesis.update_attributes(params[:thesis])
        format.html { redirect_to @thesis, notice: 'Thesis was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @thesis.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /theses/1
  # DELETE /theses/1.json
  def destroy
    @thesis = Thesis.find(params[:id])
    @thesis.destroy

    respond_to do |format|
      format.html { redirect_to theses_url }
      format.json { head :no_content }
    end
  end
end
