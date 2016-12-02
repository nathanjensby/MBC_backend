# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Recipe.destroy_all
Ingredient.destroy_all
Measurement.destroy_all

brown_derby = Recipe.create({
  name: "Brown Derby",
  instructions: "Mix bourbon, juice, and honey mixture in a shaker with ice; shake to chill. Strain into champagne coupe."
  })

honey = Ingredient.create({
  name: "Honey",
  })

water = Ingredient.create({
  name: "Water"
  })

b = Ingredient.create(name:"Burbon")

m = Measurement.new
m.amount = "1.5 tsp"
m.ingredient << honey
m.recipe << brown_derby
m.save

m2 = Measurement.new
m2.amount = "1.5 tsp"
m2.ingredient << water
m2.recipe << brown_derby
m2.save

m3 = Measurement.new
m3.amount = "1 oz"
m3.ingredient << b
m3.recipe << brown_derby
m3.save
