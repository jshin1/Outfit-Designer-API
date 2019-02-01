class User < ApplicationRecord
  has_many :clothes
  has_many :outfits
end
