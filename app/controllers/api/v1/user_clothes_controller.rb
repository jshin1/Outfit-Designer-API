class Api::V1::UserClothesController < ApplicationController
  before_action :find_user_clothe, only: [:update]

  def index
    @user_clothes = UserClothe.all
    render json: @user_clothes
  end

  def update
    @user_clothe.update(user_clothe_params)
    if @user_clothe.save
      render json: @user_clothe, status: :accepted
    else
      render json: { errors: @user_clothe.errors.full_messages }, status: :unprocessible_entity
    end
  end

  private

  def user_clothe_params
    params.permit(:user_id, :clothe_id)
  end

  def find_user_clothe
    @user_clothe = UserClothe.find(params[:id])
  end
end
