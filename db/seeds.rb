# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

User.where(name: 'tester').first_or_create(name: 'tester', user_id: 'tester_id', password: 'password', password_confirmation: 'password', admin: false)
User.where(name: 'admin').first_or_create(name: 'admin', user_id: 'admin_id', password: 'password', password_confirmation: 'password', admin: true)
User.where(name: 'user').first_or_create(name: 'user', user_id: 'user_id', password: 'password', password_confirmation: 'password', admin: false)
User.where(name: 'boss').first_or_create(name: 'boss', user_id: 'boss_id', password: 'password', password_confirmation: 'password', admin: true)
User.where(name: 'ceo').first_or_create(name: 'ceo', user_id: 'ceo_id', password: 'password', password_confirmation: 'password', admin: true)
User.where(name: 'developer').first_or_create(name: 'developer', user_id: 'developer_id', password: 'password', password_confirmation: 'password', admin: false)



# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

tolkien = Author.where(name:'J. R. R. Tolkien')
                .first_or_create!(dob:Time.parse('03-01-1892'), nationality:'British', 
                	biography:"John Ronald Reuel Tolkien, CBE was an English writer, poet, 
                	philologist, and university professor, best known as the author of the 
                	classic high fantasy works The Hobbit, The Lord of the Rings, and The 
                	Silmarillion.", awards: '1957 International Fantasy Award for Fiction', image_url: 'http://upload.wikimedia.org/wikipedia/commons/b/b4/Tolkien_1916.jpg')
Book.where(isbn:'9780544003415')
	.first_or_create!(title:'The Lord of the Rings', abstract:'This is where the short summary for lord of the rings goes', 
	pages:1216, genre:'fantasy', image_cover_url:'http://2.bp.blogspot.com/-iVwMbMPsAK4/TmyFH-MLXsI/AAAAAAAABwU/9RW48qLcroc/s1600/the-lord-of-the-rings-the-fellowship-of-the-ring.jpg',  published_on:Time.parse('29-07-1954'), total_in_library:2, author:tolkien)

	zahn = Author.where(name:'Timothy Zahn')
                .first_or_create!(dob:Time.parse('09-01-1951'), nationality:'American', 
                	biography:"Timothy Zahn is a writer of science fiction short stories and novels. His novella Cascade Point won the 1984 Hugo Award.", awards: '1984 Hugo Award', image_url: 'http://upload.wikimedia.org/wikipedia/commons/thumb/f/ff/10.12.12TimothyZahnByLuigiNovi3.jpg/640px-10.12.12TimothyZahnByLuigiNovi3.jpg')
Book.where(isbn:'0553091867')
	.first_or_create!(title:'The Last Command', abstract:'The epic conclusion to the Thrawn Triology', 
	pages:407, genre:'science-fiction', image_cover_url: 'http://www.saltmanz.com/pictures/albums/Cover%20Scans/Book%20Covers/Last%20Command.jpg', published_on:Time.parse('05-01-1993'), total_in_library:7, author:zahn)
Book.where(isbn:'0553073273')
	.first_or_create!(title:'Heir to the Empire', abstract:'The epic beginning to the Thrawn Triology', 
	pages:361, genre:'science-fiction', image_cover_url: 'http://img1.wikia.nocookie.net/__cb20050709075915/starwars/images/4/40/Heirtotheempire.jpg', published_on:Time.parse('06-01-1991'), total_in_library:9, author:zahn)
Book.where(isbn:'0553085743')
	.first_or_create!(title:'Dark Force Rising', abstract:'The epic second act in the Thrawn Triology', 
	pages:376, genre:'science-fiction', image_cover_url: 'http://img1.wikia.nocookie.net/__cb20110127115357/starwars/images/6/66/Darkforcerising.jpg', published_on:Time.parse('06-01-1992'), total_in_library:4, author:zahn)





# tolkien = Author.create(name:'J. R. R. Tolkien', dob:Time.parse('03-01-1892'), nationality:'British', 
#                 	biography:'John Ronald Reuel Tolkien, CBE was an English writer, poet, 
#                 	philologist, and university professor, best known as the author of the 
#                 	classic high fantasy works The Hobbit, The Lord of the Rings, and The 
#                 	Silmarillion.', image_url:'http://en.wikipedia.org/wikipedia/commons/thumb/b/b4/Tolkien_1916.jpg/320px-Tolkien_1916.jpg')

# Book.create(isbn:'9780544003415',title:'The Lord of the Rings', abstract:"This is where the short summary for lord of the rings goes",
# 	pages:1216, genre:'fantasy', published_on:Time.parse('29-07-1954'), total_in_library:2, author:tolkien)

