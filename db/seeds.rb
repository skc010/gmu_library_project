# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

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
<<<<<<< HEAD
                	Silmarillion.", image_url: 'http://en.wikipedia.org/wikipedia/commons/thumb/b/b4/Tolkien_1916.jpg/320px-Tolkien_1916.jpg')
Book.where(isbn:'9780544003415')
	.first_or_create!(title:'The Lord of the Rings', abstract:'This is where the short summary for lord of the rings goes', 
	pages:1216, genre:'fantasy', published_on:Time.parse('29-07-1954'), total_in_library:2, author:tolkien)

# tolkien = Author.create(name:'J. R. R. Tolkien', dob:Time.parse('03-01-1892'), nationality:'British', 
#                 	biography:'John Ronald Reuel Tolkien, CBE was an English writer, poet, 
#                 	philologist, and university professor, best known as the author of the 
#                 	classic high fantasy works The Hobbit, The Lord of the Rings, and The 
#                 	Silmarillion.', image_url:'http://en.wikipedia.org/wiki/J._R._R._Tolkien#mediaviewer/File:Tolkien_1916.jpg')

# Book.create(isbn:'9780544003415',title:'The Lord of the Rings', abstract:"This is where the short summary for lord of the rings goes",
# 	pages:1216, genre:'fantasy', published_on:Time.parse('29-07-1954'), total_in_library:2, author:tolkien)
=======
                	Silmarillion.", image_url: 'http://upload.wikimedia.org/wikipedia/commons/thumb/b/b4/Tolkien_1916.jpg/320px-Tolkien_1916.jpg')
Book.where(title:'The Lord of the Rings')
	.first_or_create!(isbn:'9780544003415', abstract:'This is where the short summary for lord of the rings goes', 
	pages:1216, genre:'fantasy', published_on:07/29/1954, total_in_library:2, author:tolkien)
>>>>>>> 474366759f3622f9e924e000a0942e5cb9dff47d

