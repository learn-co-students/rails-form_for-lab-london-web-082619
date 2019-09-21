# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Student.create([{ first_name: 'Chicago' , last_name: "Brown"}, { first_name: 'Rachel' , last_name: "Green" }])

SchoolClass.create([{ title: 'Math' , room_number: "201"}, { title: 'Science' , room_number: "420" }])