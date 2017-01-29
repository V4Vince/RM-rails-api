class AdvertisementsController < ApplicationController
  before_action :set_advertisement, only: [:show, :update, :destroy]

  # GET /advertisements
  # GET /advertisements.json
  def index
    @advertisements = Advertisement.all

    render json: @advertisements
  end

  # GET /advertisements/1
  # GET /advertisements/1.json
  def show
    render json: @advertisement
  end

  # POST /advertisements
  # POST /advertisements.json
  def create
    @advertisement = Advertisement.new(advertisement_params)

    if @advertisement.save
      render json: @advertisement, status: :created, location: @advertisement
    else
      render json: @advertisement.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /advertisements/1
  # PATCH/PUT /advertisements/1.json
  def update
    @advertisement = Advertisement.find(params[:id])

    if @advertisement.update(advertisement_params)
      head :no_content
    else
      render json: @advertisement.errors, status: :unprocessable_entity
    end
  end

  # DELETE /advertisements/1
  # DELETE /advertisements/1.json
  def destroy
    @advertisement.destroy

    head :no_content
  end

  private

    def set_advertisement
      @advertisement = Advertisement.find(params[:id])
    end

    def advertisement_params
      params[:advertisement]
    end
end
