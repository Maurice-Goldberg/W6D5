# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


Cat.destroy_all
cat1 = Cat.create!(birth_date:'1994/11/16', color: "Black", name: "Garfield", sex: "M", description: "One time, Garfield ate all the cookies and threw up. Poor guy!")
cat2 = Cat.create!(birth_date:'2019/01/24', color: "Calico", name: "Phoebe", sex: "F", description: "One day, Phoebe played with a piece of string for four hours.")
cat3 = Cat.create!(birth_date:'2006/07/01', color: "White", name: "Royal", sex: "M", description: "Worries a lot. He has this really cool catio on the fire escape and chills there all day")