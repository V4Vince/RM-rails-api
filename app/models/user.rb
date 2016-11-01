class User < ActiveRecord::Base
  include Authentication
  has_many :buildings

  has_many :examples
end
