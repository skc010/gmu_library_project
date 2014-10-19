class User < ActiveRecord::Base
	validates :name, uniqueness: true, presence: true
	has_many :reservations, dependent: :destroy
	has_many :books, through: :reservations
  	has_secure_password
end
