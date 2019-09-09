class SeriesController < ApplicationController
  before_action :set_series, only: [:show, :update, :destroy]

  # GET /series
  def index
    @series = Serie.all

    render json: @series
  end

  # GET /series/1
  def show
    render json: @series, include: [:genre]
  end

  # POST /series
  def create
    @series = Serie.new(series_params)

    if @series.save
      render json: @series, status: :created, location: @series
    else
      render json: @series.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /series/1
  def update
    if @series.update(series_params)
      render json: @series
    else
      render json: @series.errors, status: :unprocessable_entity
    end
  end

  # DELETE /series/1
  def destroy
    @series.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_series
      @series = Serie.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def series_params
      params.require(:series).permit(:name, :status, :img, :genre_id)
    end
end
