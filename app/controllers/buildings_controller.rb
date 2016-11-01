class BuildingsController < ApplicationController
  before_action :set_building, only: [:show, :update, :destroy]

  # GET /buildings
  # GET /buildings.json
  def index
    @buildings = Building.all

    render json: @buildings
  end

  # GET /buildings/1
  # GET /buildings/1.json
  def show
    render json: @building
  end

  # POST /buildings
  # POST /buildings.json
  def create
    @building = Building.new(building_params)

    if @building.save
      render json: @building, status: :created, location: @building
    else
      render json: @building.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /buildings/1
  # PATCH/PUT /buildings/1.json
  def update
    @building = Building.find(params[:id])

    if @building.update(building_params)
      head :no_content
    else
      render json: @building.errors, status: :unprocessable_entity
    end
  end

  # DELETE /buildings/1
  # DELETE /buildings/1.json
  def destroy
    @building.destroy

    head :no_content
  end

  private

    def set_building
      @building = Building.find(params[:id])
    end

    def building_params
      params.require(:building).permit(:building_name, :address, :total_units, :current_mortgage, :current_insurance, :current_taxes)
    end

  end
