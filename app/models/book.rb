class Book < ActiveRecord::Base
	GENRES = ['science-fiction', 'fiction', 'non-fiction', 'fantasy', 'romance', 'classics', 'tradegy']
	validates :isbn, :title, :abstract, :pages, :genre, :published_on, :total_in_library, :author, presence: true 
	validates :genre, inclusion: { in: GENRES}
	validates :abstract, length: {minimum: 15} 
	validates :pages,
	  numericality: {only_integer: true, greater_than_or_equal_to: 0},
	  unless: "pages.blank?"
	validates :total_in_library,
	  numericality: {only_integer: true, greater_than_or_equal_to: 0},
	  unless: "total_in_library.blank?"

	belongs_to :author
	has_many :reservations, dependent: :destroy

	# def self.search(search)
 #      search_condition = "%" + search + "%"
 #      find(:all, :conditions => ['title LIKE ?', search_condition])
 #    end

     def self.search(search)
        # where(:title, search) #exact match
        where("title like ? OR isbn IS ?", "%#{search}%", "#{search}")
         # phrase = "%" + search + "%"
         # find(:all, :conditions => ['title LIKE ? OR isbn IS ?', phrase, search])
    end

end
