class Book < ActiveRecord::Base
	validates :isbn, :title, :abstract, :pages, :genre, :published_on, :total_in_library, :author, presence: true 
	validates :genre, inclusion:GENRE 
	validates :author. inclusion:AUTHOR
	validates :abstract, length: {minimum: 15} 
	validates :pages, :total_in_library
	  numericality: {only_integer: true, greater_than_or_equal_to:0},
	  unless: "total_in_library.blank?"

	has_one: :author
end
