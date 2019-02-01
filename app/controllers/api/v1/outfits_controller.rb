class Api::V1::OutfitsController < ApplicationController
  before_action :find_outfit, only: [:update]

  def index
    @outfits = Outfit.all
    render json: @outfits
  end

  def update
    @outfit.update(outfit_params)
    if @outfit.save
      render json: @outfit, status: :accepted
    else
      render json: { errors: @outfit.errors.full_messages }, status: :unprocessible_entity
    end
  end

  private

  def outfit_params
    params.permit(:season, :occasion, :user_id)
  end

  def find_outfit
    @outfit = Outfit.find(params[:id])
  end
end
