class Info < ActiveRecord::Base
  belongs_to :infoable, polymorphic: true
  belongs_to :building
  belongs_to :unit
end
