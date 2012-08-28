class FacebookBlastsController < ApplicationController
  # GET /facebook_blasts
  # GET /facebook_blasts.json
  def index
    @facebook_blasts = FacebookBlast.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @facebook_blasts }
    end
  end

  # GET /facebook_blasts/1
  # GET /facebook_blasts/1.json
  def show
    @facebook_blast = FacebookBlast.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @facebook_blast }
    end
  end

  # GET /facebook_blasts/new
  # GET /facebook_blasts/new.json
  def new
    @facebook_blast = FacebookBlast.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @facebook_blast }
    end
  end

  # GET /facebook_blasts/1/edit
  def edit
    @facebook_blast = FacebookBlast.find(params[:id])
  end

  # POST /facebook_blasts
  # POST /facebook_blasts.json
  def create
    @facebook_blast = FacebookBlast.new(params[:facebook_blast])

    respond_to do |format|
      if @facebook_blast.save
        format.html { redirect_to @facebook_blast, notice: 'Facebook blast was successfully created.' }
        format.json { render json: @facebook_blast, status: :created, location: @facebook_blast }
      else
        format.html { render action: "new" }
        format.json { render json: @facebook_blast.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /facebook_blasts/1
  # PUT /facebook_blasts/1.json
  def update
    @facebook_blast = FacebookBlast.find(params[:id])

    respond_to do |format|
      if @facebook_blast.update_attributes(params[:facebook_blast])
        format.html { redirect_to @facebook_blast, notice: 'Facebook blast was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @facebook_blast.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /facebook_blasts/1
  # DELETE /facebook_blasts/1.json
  def destroy
    @facebook_blast = FacebookBlast.find(params[:id])
    @facebook_blast.destroy

    respond_to do |format|
      format.html { redirect_to facebook_blasts_url }
      format.json { head :no_content }
    end
  end
end
