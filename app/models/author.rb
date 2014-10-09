class Author < ActiveRecord::Base

	validates :name, :dob, :nationality, :biography, :image_url
	validates :biography, length: {minimum:15 }
end
