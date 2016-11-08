class BuildingSerializer < ActiveModel::Serializer
  attributes :id, :building_name, :address, :total_units, :current_mortgage, :current_insurance, :current_taxes, :editable

  has_one :info
  has_many :units

  def editable
    scope == object.user
  end
end
