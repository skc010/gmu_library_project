module BooksHelper
	def get_authors 
		list_authors = Array.new 
		all_authors = Author.all
		all_authors.each do |author|
			item = Array.new
			item.push(author.name)
			item.push(author.id)
			list_authors.push(item)
		end
		return list_authors
	end

	def reserve?(book)
		total_available = book.total_in_library - book.reservations.size
		total_available > 0
	end

	def available_to_reserve(book)
  		available_to_reserve = book.total_in_library - book.reservations.size
  	end




end
