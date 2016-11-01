class Unit < ActiveRecord::Base
  belongs_to :building, inverse_of: :units
end
