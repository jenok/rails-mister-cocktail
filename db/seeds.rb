# db/seeds.rb
require 'json'
require 'open-uri'

url = 'https://www.thecocktaildb.com/api/json/v1/1/list.php?i=list'
data = open(url).read
cocktail = JSON.parse(data)


cocktail.values.first.each do |ingredient|
Ingredient.create(name: ingredient.values.pop)
end

