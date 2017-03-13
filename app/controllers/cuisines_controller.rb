class CuisinesController < ApplicationController
  before_action :set_cuisine, only: [:show, :edit, :update, :destroy]

  def index
    #@cuisines = Cuisine.where(["title LIKE ?","%#{params[:search]}%"])
    @cuisines = Cuisine.where('lower(location) LIKE lower(?) OR lower(location) LIKE lower(?)', "%#{params[:search]}%", "%#{params[:search]}%")
  end
  # GET /cuisines
  # GET /cuisines.json

  # GET /cuisines/1
  # GET /cuisines/1.json
  def show
    @recipes = Recipe.where(cuisine_id: @cuisine).order('created_at DESC')
    @reservations = Reservation.where(cuisine_id: @cuisine).order('created_at DESC')
    @reviews = Review.where(cuisine_id: @cuisine).order('created_at DESC')
  end

  # GET /cuisines/new
  def new
    @cuisine = Cuisine.new
  end

  # GET /cuisines/1/edit
  def edit
  end

  # POST /cuisines
  # POST /cuisines.json
  def create
    @cuisine = Cuisine.new(cuisine_params)
    @cuisine.chef = current_chef
    respond_to do |format|
      if @cuisine.save
        format.html { redirect_to @cuisine, notice: 'Cuisine was successfully created.' }
        format.json { render :show, status: :created, location: @cuisine }
      else
        format.html { render :new }
        format.json { render json: @cuisine.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /cuisines/1
  # PATCH/PUT /cuisines/1.json
  def update
    respond_to do |format|
      if @cuisine.update(cuisine_params)
        format.html { redirect_to @cuisine, notice: 'Cuisine was successfully updated.' }
        format.json { render :show, status: :ok, location: @cuisine }
      else
        format.html { render :edit }
        format.json { render json: @cuisine.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /cuisines/1
  # DELETE /cuisines/1.json
  def destroy
    @cuisine.destroy
    respond_to do |format|
      format.html { redirect_to cuisines_url, notice: 'Cuisine was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
  # Use callbacks to share common setup or constraints between actions.
  def set_cuisine
    @cuisine = Cuisine.find(params[:id])
  end

  # Never trust parameters from the scary internet, only allow the white list through.
  def cuisine_params
    params.require(:cuisine).permit(:title, :about, :availability, :location)
  end
end


