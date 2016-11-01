class BuildingSerializer < ActiveModel::Serializer
  attributes :id, :building_name, :address, :total_units, :current_mortgage, :current_insurance, :current_taxes, :editable

  def editable
    scope == object.user
  end
end
