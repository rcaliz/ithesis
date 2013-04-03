class CompromisesController < ApplicationController
  # GET /compromises
  # GET /compromises.json
  def index
    @compromises = Compromise.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @compromises }
    end
  end

  # GET /compromises/1
  # GET /compromises/1.json
  def show
    @compromise = Compromise.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @compromise }
    end
  end

  # GET /compromises/new
  # GET /compromises/new.json
  def new
    @compromise = Compromise.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @compromise }
    end
  end

  # GET /compromises/1/edit
  def edit
    @compromise = Compromise.find(params[:id])
  end

  # POST /compromises
  # POST /compromises.json
  def create
    @compromise = Compromise.new(params[:compromise])

    respond_to do |format|
      if @compromise.save
        format.html { redirect_to @compromise, notice: 'Compromise was successfully created.' }
        format.json { render json: @compromise, status: :created, location: @compromise }
      else
        format.html { render action: "new" }
        format.json { render json: @compromise.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /compromises/1
  # PUT /compromises/1.json
  def update
    @compromise = Compromise.find(params[:id])

    respond_to do |format|
      if @compromise.update_attributes(params[:compromise])
        format.html { redirect_to @compromise, notice: 'Compromise was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @compromise.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /compromises/1
  # DELETE /compromises/1.json
  def destroy
    @compromise = Compromise.find(params[:id])
    @compromise.destroy

    respond_to do |format|
      format.html { redirect_to compromises_url }
      format.json { head :no_content }
    end
  end
end
