class User < ActiveRecord::Base

  has_many :garages
  has_secure_password

end
