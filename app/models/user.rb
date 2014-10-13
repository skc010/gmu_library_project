class User < ActiveRecord::Base
	validates :name, :user_id, presence: true
	has_many :reservations
  	has_secure_password
end
