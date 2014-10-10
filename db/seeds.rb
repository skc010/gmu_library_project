# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Author.create(name:'J. R. R. Tolkien', dob:Time.parse('03-01-1892'), nationality: 'British', biography:'John Ronald Reuel Tolkien, CBE was an English writer, poet, philologist, and university professor, best known as the author of the classic high fantasy works The Hobbit, The Lord of the Rings, and The Silmarillion.', image_url: 'http://en.wikipedia.org/wiki/J._R._R._Tolkien#mediaviewer/File:Tolkien_1916.jpg')
