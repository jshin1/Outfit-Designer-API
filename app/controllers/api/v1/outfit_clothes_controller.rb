class Api::V1::OutfitClothesController < ApplicationController
  before_action :find_outfit_clothe, only: [:update]

  def index
    @outfit_clothes = OutfitClothe.all
    render json: @outfit_clothes
  end

  def update
    @outfit_clothe.update(outfit_clothe_params)
    if @outfit_clothe.save
      render json: @outfit_clothe, status: :accepted
    else
      render json: { errors: @outfit_clothe.errors.full_messages }, status: :unprocessible_entity
    end
  end

  private

  def outfit_clothe_params
    params.permit(:clothe_id, :outfit_id)
  end

  def find_outfit_clothe
    @outfit_clothe = OutfitClothe.find(params[:id])
  end
end
