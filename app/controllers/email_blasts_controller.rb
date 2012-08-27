class EmailBlastsController < ApplicationController
  # GET /email_blasts
  # GET /email_blasts.json
  def index
    @email_blasts = EmailBlast.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @email_blasts }
    end
  end

  # GET /email_blasts/1
  # GET /email_blasts/1.json
  def show
    @email_blast = EmailBlast.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @email_blast }
    end
  end

  # GET /email_blasts/new
  # GET /email_blasts/new.json
  def new
    @email_blast = EmailBlast.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @email_blast }
    end
  end

  # GET /email_blasts/1/edit
  def edit
    @email_blast = EmailBlast.find(params[:id])
  end

  # POST /email_blasts
  # POST /email_blasts.json
  def create
    @email_blast = EmailBlast.new(params[:email_blast])

    respond_to do |format|
      if @email_blast.save
        format.html { redirect_to @email_blast, notice: 'Email blast was successfully created.' }
        format.json { render json: @email_blast, status: :created, location: @email_blast }
      else
        format.html { render action: "new" }
        format.json { render json: @email_blast.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /email_blasts/1
  # PUT /email_blasts/1.json
  def update
    @email_blast = EmailBlast.find(params[:id])

    respond_to do |format|
      if @email_blast.update_attributes(params[:email_blast])
        format.html { redirect_to @email_blast, notice: 'Email blast was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @email_blast.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /email_blasts/1
  # DELETE /email_blasts/1.json
  def destroy
    @email_blast = EmailBlast.find(params[:id])
    @email_blast.destroy

    respond_to do |format|
      format.html { redirect_to email_blasts_url }
      format.json { head :no_content }
    end
  end
end
