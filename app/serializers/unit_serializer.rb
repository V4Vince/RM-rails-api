class UnitSerializer < ActiveModel::Serializer
  attributes :id, :vacant

  has_one :info
end
