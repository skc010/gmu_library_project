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

	def you_currently_checked_out_book?(book)

		any_reserved_book_with_book_id_user_id = Reservation.where("book_id=? and user_id=?", book.id, session[:user_id]).all
    	if any_reserved_book_with_book_id_user_id.nil? || any_reserved_book_with_book_id_user_id.count > 0
     		true
   		else
     		false
    	end
	end

	def available_to_reserve(book)
  		available_to_reserve = book.total_in_library - book.reservations.size
  	end




end
