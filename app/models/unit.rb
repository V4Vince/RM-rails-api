class Unit < ActiveRecord::Base
  belongs_to :building, inverse_of: :units
  has_one :info, as: :infoable, dependent: :destroy
end
