class WeddingsController < ApplicationController
  # GET /weddings
  # GET /weddings.json
 # before_filter :admin_user, :only => [:new, :create, :edit, :update, :destroy, :show]


  def index
    @weddings = Wedding.all
  

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @weddings }
    end
  end

  # GET /weddings/1
  # GET /weddings/1.json
  def show
    @wedding = Wedding.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @wedding }
    end
  end

  # GET /weddings/new
  # GET /weddings/new.json
  def new
    @wedding = Wedding.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @wedding }
    end
  end

  # GET /weddings/1/edit
  def edit
    @wedding = Wedding.find(params[:id])
  end

  # POST /weddings
  # POST /weddings.json
  def create
    @wedding = Wedding.new(params[:wedding])

    respond_to do |format|
      if @wedding.save
        format.html { redirect_to @wedding, notice: 'Wedding was successfully created.' }
        format.json { render json: @wedding, status: :created, location: @wedding }
      else
        format.html { render action: "new" }
        format.json { render json: @wedding.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /weddings/1
  # PUT /weddings/1.json
  def update
    @wedding = Wedding.find(params[:id])

    respond_to do |format|
      if @wedding.update_attributes(params[:wedding])
        format.html { redirect_to @wedding, notice: 'Wedding was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @wedding.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /weddings/1
  # DELETE /weddings/1.json
  def destroy
    @wedding = Wedding.find(params[:id])
    @wedding.destroy

    respond_to do |format|
      format.html { redirect_to weddings_url }
      format.json { head :no_content }
    end
  end

  private
   def admin_user
    redirect_to home_path, notice: "sudo says: YOU SHALL NOT PASS!" unless current_user and current_user.admin?
  end

end
