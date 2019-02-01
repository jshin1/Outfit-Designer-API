class Clothe < ApplicationRecord
  has_many :outfit_clothes
  has_many :outfits, through: :outfit_clothes
  has_many :user_clothes
  has_many :users, through: :user_clothes
end
