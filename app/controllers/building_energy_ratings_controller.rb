class BuildingEnergyRatingsController < ApplicationController
  before_action :set_building_energy_rating, only: [:show, :edit, :update, :destroy]

  # GET /building_energy_ratings
  # GET /building_energy_ratings.json
  def index
    @building_energy_ratings = BuildingEnergyRating.all
  end

  # GET /building_energy_ratings/1
  # GET /building_energy_ratings/1.json
  def show
  end

  # GET /building_energy_ratings/new
  def new
    @building_energy_rating = BuildingEnergyRating.new
  end

  # GET /building_energy_ratings/1/edit
  def edit
  end

  # POST /building_energy_ratings
  # POST /building_energy_ratings.json
  def create
    @building_energy_rating = BuildingEnergyRating.new(building_energy_rating_params)

    respond_to do |format|
      if @building_energy_rating.save
        format.html { redirect_to @building_energy_rating, notice: 'Building energy rating was successfully created.' }
        format.json { render action: 'show', status: :created, location: @building_energy_rating }
      else
        format.html { render action: 'new' }
        format.json { render json: @building_energy_rating.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /building_energy_ratings/1
  # PATCH/PUT /building_energy_ratings/1.json
  def update
    respond_to do |format|
      if @building_energy_rating.update(building_energy_rating_params)
        format.html { redirect_to @building_energy_rating, notice: 'Building energy rating was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @building_energy_rating.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /building_energy_ratings/1
  # DELETE /building_energy_ratings/1.json
  def destroy
    @building_energy_rating.destroy
    respond_to do |format|
      format.html { redirect_to building_energy_ratings_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_building_energy_rating
      @building_energy_rating = BuildingEnergyRating.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def building_energy_rating_params
      params.require(:building_energy_rating).permit(:building_rating, :annual_energy)
    end
end
