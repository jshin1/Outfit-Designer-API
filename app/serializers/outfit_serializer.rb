class OutfitSerializer < ActiveModel::Serializer
  attributes :id, :user_id, :user, :occasion_id
  has_many :clothes, through: :outfit_clothes

  def user
    User.find(object.user_id).first_name
  end
end
