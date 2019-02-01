class Api::V1::ClothesController < ApplicationController
  before_action :find_clothe, only: [:update]

  def index
    @clothes = Clothe.all
    render json: @clothes
  end

  def update
    @clothe.update(clothe_params)
    if @clothe.save
      render json: @clothe, status: :accepted
    else
      render json: { errors: @clothe.errors.full_messages }, status: :unprocessible_entity
    end
  end

  private

  def clothe_params
    params.permit(:clothing_type, :color, :user_id)
  end

  def find_clothe
    @clothe = Clothe.find(params[:id])
  end
end
