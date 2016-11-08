class InfoSerializer < ActiveModel::Serializer
  attributes :id, :footage, :bedrooms, :bathrooms, :parking, :livingroom, :kitchen, :diningroom

end
