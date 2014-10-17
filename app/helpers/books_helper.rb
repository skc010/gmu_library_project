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
end
