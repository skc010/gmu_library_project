class Book < ActiveRecord::Base

	has_one :author
	has_many :reservation
end
