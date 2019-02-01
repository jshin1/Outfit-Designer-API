class Api::V1::OccasionsController < ApplicationController
  before_action :find_occasion, only: [:update]

  def index
    @occasions = Occasion.all
    render json: @occasions
  end

  def update
    @occasion.update(occasion_params)
    if @occasion.save
      render json: @occasion, status: :accepted
    else
      render json: { errors: @occasion.errors.full_messages }, status: :unprocessible_entity
    end
  end

  private

  def occasion_params
    params.permit(:name)
  end

  def find_occasion
    @occasion = Occasion.find(params[:id])
  end
end
