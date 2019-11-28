class GarantsController < ApplicationController
  before_action :set_garant, only: [:show, :update, :destroy]

  # GET /garants
  def index
    @garants = Garant.all

    render json: @garants
  end

  # GET /garants/1
  def show
    render json: @garant
  end

  # POST /garants
  def create
    @garant = Garant.new(garant_params)

    if @garant.save
      render json: @garant, status: :created, location: @garant
    else
      render json: @garant.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /garants/1
  def update
    if @garant.update(garant_params)
      render json: @garant
    else
      render json: @garant.errors, status: :unprocessable_entity
    end
  end

  # DELETE /garants/1
  def destroy
    @garant.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_garant
      @garant = Garant.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def garant_params
      params.fetch(:garant, {})
    end
end
