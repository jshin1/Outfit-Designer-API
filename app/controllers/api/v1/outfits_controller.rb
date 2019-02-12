class Api::V1::OutfitsController < ApplicationController
  before_action :find_outfit, only: [:update, :destroy]

  def index
    @outfits = Outfit.all
    render json: @outfits
  end

  def show
    @outfit = Outfit.find(params[:id])
    render json: @outfit, status: :ok
  end

  def create
    @outfit = Outfit.create(outfit_params)
    if @outfit.valid?

      params[:clothes].each do |clothe_id|
        clothe = Clothe.find(clothe_id)
        OutfitClothe.create(outfit_id: @outfit.id, clothe_id: clothe.id)
      end
      render json: @outfit, status: :accepted
    else
      render json: { errors: @outfit.errors.full_messages }, status: :unprocessible_entity
    end
  end

  def update
    @outfit.update(outfit_params)
    if @outfit.save
      render json: @outfit, status: :ok
    else
      render json: { errors: @outfit.errors.full_messages }, status: :unprocessible_entity
    end
  end

  def destroy
    @outfit.destroy
  end

  private

  def outfit_params
    params.permit(:season, :occasion_id, :user_id)
  end

  def find_outfit
    @outfit = Outfit.find(params[:id])
  end
end
