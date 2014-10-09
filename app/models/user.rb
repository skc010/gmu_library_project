class User < ActiveRecord::Base
	has_many :reservation
  has_secure_password
end
