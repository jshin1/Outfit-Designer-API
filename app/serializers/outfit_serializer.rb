class OutfitSerializer < ActiveModel::Serializer
  attributes :id
  has_many :clothes, through: :outfit_clothes
end
