class ImagesController < ApplicationController
  # before_filter :require_login
  # GET /images
  # GET /images.json
  def index
    @images = Image.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @images }
    end
  end

  # GET /images/1
  # GET /images/1.json
  def show
    @image = Image.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @image }
    end
  end

  # GET /images/new
  # GET /images/new.json
  def new
    @image = Image.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @image }
    end
  end

  # GET /images/1/edit
  def edit
    @image = Image.find(params[:id])
  end

  # POST /images
  # POST /images.json
  def create
    @image = Image.new(params[:image])

<<<<<<< HEAD
    @image.reunion_id = session[:reunion_id]

=======
>>>>>>> 290743db3260ec73582e93a4103180d6a57d7a36
    respond_to do |format|
      if @image.save
        format.html { redirect_to @image, notice: 'Image was successfully created.' }
        format.json { render json: @image, status: :created, location: @image }
      else
        format.html { render action: "new" }
        format.json { render json: @image.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /images/1
  # PUT /images/1.json
  def update
    @image = Image.find(params[:id])

    respond_to do |format|
      if @image.update_attributes(params[:image])
        format.html { redirect_to @image, notice: 'Image was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @image.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /images/1
  # DELETE /images/1.json
  def destroy
    @image = Image.find(params[:id])
    @image.destroy

    respond_to do |format|
      format.html { redirect_to images_url }
      format.json { head :no_content }
    end
  end
<<<<<<< HEAD

  def decouple
    @image = Image.find(params[:id])
    @image.reunion_id = nil
    respond_to do |format|
      if @image.save
        format.html { redirect_to artefacts_path, notice: 'Image was successfully decoupled.' }
        format.json { render json: @image, status: :created, location: @image }
      else
        format.html { render action: "index" }
        format.json { render json: @image.errors, status: :unprocessable_entity }
      end
    end
  end

  def download
    @image = Image.find(params[:id])
    send_file Rails.root.join("public"+@image.image_url)
  end

end
=======
end
>>>>>>> 290743db3260ec73582e93a4103180d6a57d7a36
