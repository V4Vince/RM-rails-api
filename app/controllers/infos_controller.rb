class InfosController < ApplicationController
  before_action :set_info, only: [:show, :update, :destroy]
  before_action :get_parent, only: [:create, :update]

  # GET /infos
  # GET /infos.json
  def index
    @infos = Info.all

    render json: @infos
  end

  # GET /infos/1
  # GET /infos/1.json
  def show
    render json: @info
  end

  # POST /units/$ID/infos
  # POST /infos.json
  # shallow nest
  def create
    if @parent.info.nil?
      @info = @parent.create_info(info_params)
      if @info.save
        render json: @info, status: :created, location: @info
      else
        render json: @info.errors, status: :unprocessable_entity
      end
    else
      head :no_content
    end
  end

  # PATCH/PUT /infos/1
  # PATCH/PUT /infos/1.json
  def update
    @info = Info.find(params[:id])

    if @info.update(info_params)
      head :no_content
    else
      render json: @info.errors, status: :unprocessable_entity
    end
  end

  # DELETE /infos/1
  # DELETE /infos/1.json
  def destroy
    @info.destroy

    head :no_content
  end

  private

    def set_info
      @info = Info.find(params[:id])
    end

    #determines if the parent model is House or Unit
    def get_parent
      if params[:building_id].present?
        @parent = Building.find(params[:building_id])
      elsif params[:unit_id].present?
        @parent = Unit.find(params[:unit_id])
      end
    end

    def info_params
      params.require(:info).permit(:footage, :bedrooms, :bathrooms, :parking, :livingroom, :kitchen, :diningroom)
    end
end
