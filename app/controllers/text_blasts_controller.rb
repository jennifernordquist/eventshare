class TextBlastsController < ApplicationController
  # GET /text_blasts
  # GET /text_blasts.json
  def index
    @text_blasts = TextBlast.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @text_blasts }
    end
  end

  # GET /text_blasts/1
  # GET /text_blasts/1.json
  def show
    @text_blast = TextBlast.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @text_blast }
    end
  end

  # GET /text_blasts/new
  # GET /text_blasts/new.json
  def new
    @text_blast = TextBlast.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @text_blast }
    end
  end

  # GET /text_blasts/1/edit
  def edit
    @text_blast = TextBlast.find(params[:id])
  end

  # POST /text_blasts
  # POST /text_blasts.json
  def create
    @text_blast = TextBlast.new(params[:text_blast])

    respond_to do |format|
      if @text_blast.save
        format.html { redirect_to @text_blast, notice: 'Text blast was successfully created.' }
        format.json { render json: @text_blast, status: :created, location: @text_blast }
      else
        format.html { render action: "new" }
        format.json { render json: @text_blast.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /text_blasts/1
  # PUT /text_blasts/1.json
  def update
    @text_blast = TextBlast.find(params[:id])

    respond_to do |format|
      if @text_blast.update_attributes(params[:text_blast])
        format.html { redirect_to @text_blast, notice: 'Text blast was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @text_blast.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /text_blasts/1
  # DELETE /text_blasts/1.json
  def destroy
    @text_blast = TextBlast.find(params[:id])
    @text_blast.destroy

    respond_to do |format|
      format.html { redirect_to text_blasts_url }
      format.json { head :no_content }
    end
  end
end
