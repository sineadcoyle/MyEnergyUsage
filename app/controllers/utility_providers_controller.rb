class UtilityProvidersController < ApplicationController
  before_action :set_utility_provider, only: [:show, :edit, :update, :destroy]

  # GET /utility_providers
  # GET /utility_providers.json
  def index
    @utility_providers = UtilityProvider.all
  end

  # GET /utility_providers/1
  # GET /utility_providers/1.json
  def show
  end

  # GET /utility_providers/new
  def new
    @utility_provider = UtilityProvider.new
  end

  # GET /utility_providers/1/edit
  def edit
  end

  # POST /utility_providers
  # POST /utility_providers.json
  def create
    @utility_provider = UtilityProvider.new(utility_provider_params)

    respond_to do |format|
      if @utility_provider.save
        format.html { redirect_to @utility_provider, notice: 'Utility provider was successfully created.' }
        format.json { render action: 'show', status: :created, location: @utility_provider }
      else
        format.html { render action: 'new' }
        format.json { render json: @utility_provider.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /utility_providers/1
  # PATCH/PUT /utility_providers/1.json
  def update
    respond_to do |format|
      if @utility_provider.update(utility_provider_params)
        format.html { redirect_to @utility_provider, notice: 'Utility provider was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @utility_provider.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /utility_providers/1
  # DELETE /utility_providers/1.json
  def destroy
    @utility_provider.destroy
    respond_to do |format|
      format.html { redirect_to utility_providers_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_utility_provider
      @utility_provider = UtilityProvider.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def utility_provider_params
      params.require(:utility_provider).permit(:name, :co2_coefficient, :active)
    end
end
