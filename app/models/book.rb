class Book < ActiveRecord::Base
	validates :isbn, :title, :abstract, :pages, :genre, :published_on, :total_in_library, :author
	validates :abstract, :minimum => 15
end
