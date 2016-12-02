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

#Recipes

brown_derby = Recipe.create({
  name: "Brown Derby",
  instructions: "Mix bourbon, juice, and honey mixture in a shaker with ice; shake to chill. Strain into champagne coupe."
  })

marg = Recipe.create({
    name: "Riley-Rita",
    instructions: "Shake all ingredients with ice and strain into a rocks glass. Good enough for jazz."
    })

old_f = Recipe.create({
  name: "Old Fashioned",
  instructions: "Pour the simple syrup, water, and bitters into a whiskey glass. Stir to combine, then place the ice cubes in the glass. Pour bourbon over the ice and garnish with the orange slice and maraschino cherry."
  })

#Ingredients

t = Ingredient.create(name:"Tequila")
b = Ingredient.create(name:"Bourbon")

gm = Ingredient.create(name:"Grand Marnier Orange Liqueur")

gf = Ingredient.create(name:"Grapefruit juice")
honey = Ingredient.create(name: "Honey")
water = Ingredient.create(name: "Water")
lime_j = Ingredient.create(name: "Lime juice")
agav = Ingredient.create(name:"Agave nector")
ss = Ingredient.create(name:"Simple syrup")
bit = Ingredient.create(name: "Bitters")
orange = Ingredient.create(name: "Orange")
m_cherry = Ingredient.create(name: "Maraschino cherry")

#Measurements

m = Measurement.new
m.amount = "1.5 tsp"
m.ingredient_id = honey.id
m.recipe_id = brown_derby.id
m.save

m2 = Measurement.new
m2.amount = "1.5 tsp"
m2.ingredient_id = water.id
m2.recipe_id = brown_derby.id
m2.save

m3 = Measurement.new
m3.amount = "1 oz"
m3.ingredient_id = b.id
m3.recipe_id = brown_derby.id
m3.save

m4 = Measurement.new
m4.amount = "1 oz"
m4.ingredient_id = gf.id
m4.recipe_id = brown_derby.id
m4.save

m5 = Measurement.new
m5.amount = "2 oz"
m5.ingredient_id = t.id
m5.recipe_id = marg.id
m5.save

m5 = Measurement.new
m5.amount = "1 oz"
m5.ingredient_id = gm.id
m5.recipe_id = marg.id
m5.save

m6 = Measurement.new
m6.amount = "1.5 oz"
m6.ingredient_id = lime_j.id
m6.recipe_id = marg.id
m6.save

m7 = Measurement.new
m7.amount = "(optional) to taste"
m7.ingredient_id = agav.id
m7.recipe_id = marg.id
m7.save

m8 = Measurement.new
m8.amount = "2 tsp"
m8.ingredient_id = ss.id
m8.recipe_id = old_f.id
m8.save

m9 = Measurement.new
m9.amount = "1 tsp"
m9.ingredient_id = water.id
m9.recipe_id = old_f.id
m9.save

m10 = Measurement.new
m10.amount = "1.5 oz"
m10.ingredient_id = b.id
m10.recipe_id = old_f.id
m10.save

m11 = Measurement.new
m11.amount = "2 dashes"
m11.ingredient_id = agav.id
m11.recipe_id = old_f.id
m11.save

m12 = Measurement.new
m12.amount = "1 slice"
m12.ingredient_id = orange.id
m12.recipe_id = old_f.id
m12.save

m13 = Measurement.new
m13.amount = "1"
m13.ingredient_id = m_cherry.id
m13.recipe_id = old_f.id
m13.save
