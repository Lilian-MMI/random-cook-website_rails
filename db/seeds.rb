# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

if Ingredient.count == 0
    path = File.join(File.dirname(__FILE__), "./data/ListIngredients.json")
    records = JSON.parse(File.read(path))
    records.each do |record|
        Ingredient.create!(record)
    end
    puts "Ingredient are seeded"
end

if RecipeIngredient.count == 0
    path = File.join(File.dirname(__FILE__), "./data/ListRecipeIngredients.json")
    records = JSON.parse(File.read(path))
    records.each do |record|
        RecipeIngredient.create!(record)
    end
    puts "RecipeIngredient are seeded"
end
