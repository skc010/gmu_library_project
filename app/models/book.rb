class Book < ActiveRecord::Base
	GENRES = ['science-fiction', 'fiction', 'non-fiction', 'fantasy', 'romance', 'classics']
	validates :isbn, :title, :abstract, :pages, :genre, :published_on, :total_in_library, :author, presence: true 
	validates :genre, inclusion: { in: GENRES}
	validates :abstract, length: {minimum: 15} 
	validates :pages,
	  numericality: {only_integer: true, greater_than_or_equal_to: 0},
	  unless: "pages.blank?"
	validates :total_in_library,
	  numericality: {nly_integer: true, greater_than_or_equal_to: 0},
	  unless: "total_in_library.blank?"

	belongs_to :author
	has_many :reservation
end
