class Building < ActiveRecord::Base
  belongs_to :user
  has_many :units, inverse_of: :building, dependent: :destroy
end
