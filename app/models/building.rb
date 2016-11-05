class Building < ActiveRecord::Base
  belongs_to :user
  has_many :units, inverse_of: :building, dependent: :destroy
  has_one :info, as: :infoable, dependent: :destroy

end
