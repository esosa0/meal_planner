# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
#

Recipe.destroy_all
Ingredient.destroy_all
Unit.destroy_all
Item.destroy_all

garlic_shrimp = Recipe.create(
  name: "Garlic Shrimp",
  instructions: "Stir fry the shrimp with the garlic"
)

tofu_broccoli = Recipe.create(
  name: "Tofu Broccoli",
  instructions: "Stir fry the tofu with the broccoli"
)

garlic = Item.create name: "garlic"
shrimp = Item.create name: "shrimp"
tofu = Item.create name: "tofu"
broccoli = Item.create name: "broccoli"
oil = Item.create name: "oil"

tbsp = Unit.create name: "Tablespoon"
tsp = Unit.create name: "Teaspoon"
cup = Unit.create name: "Cup"

Ingredient.create(
  amount: 1,
  unit: tbsp,
  item: garlic,
  recipe: garlic_shrimp,
  notes: "finely chopped"
)

Ingredient.create(
  amount: 1,
  unit: cup,
  item: shrimp,
  recipe: garlic_shrimp,
  notes: "peeled"
)

Ingredient.create(
  amount: 1,
  unit: cup,
  item: oil,
  recipe: garlic_shrimp,
  notes: "divided in half"
)

Ingredient.create(
  amount: 2,
  unit: cup,
  item: broccoli,
  recipe: tofu_broccoli,
  notes: "cut in florets"
)

Ingredient.create(
  amount: 2,
  unit: cup,
  item: tofu,
  recipe: tofu_broccoli,
  notes: "cut in 1 inch cubes"
)

Ingredient.create(
  amount: 1,
  unit: cup,
  item: oil,
  recipe: tofu_broccoli,
  notes: "get the brand we like"
)
