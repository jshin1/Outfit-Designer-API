class Api::V1::ColorsController < ApplicationController
  before_action :find_color, only: [:update]

  def index
    @colors = Color.all
    render json: @colors
  end

  def update
    @color.update(color_params)
    if @color.save
      render json: @color, status: :accepted
    else
      render json: { errors: @color.errors.full_messages }, status: :unprocessible_entity
    end
  end

  private

  def color_params
    params.permit(:name)
  end

  def find_color
    @color = Color.find(params[:id])
  end
end
