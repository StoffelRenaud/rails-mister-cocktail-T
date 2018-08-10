# url_photo = "http://static.giantbomb.com/uploads/original/9/99864/2419866-nes_console_set.png"
# cocktail = Cocktail.new(name: 'NES', body: "A great console")
# cocktail.remote_photo_url = url
# cocktail.save

Dose.destroy_all
Ingredient.destroy_all
Cocktail.destroy_all

10.times do
  cocktail = Cocktail.new(name: Faker::Beer.name, photo: "http://static.giantbomb.com/uploads/original/9/99864/2419866-nes_console_set.png")
  cocktail.remote_photo_url = "http://static.giantbomb.com/uploads/original/9/99864/2419866-nes_console_set.png"
  cocktail.save
end

url = 'https://www.thecocktaildb.com/api/json/v1/1/list.php?i=list'
ingredient_serialized = open(url).read
ingredients = JSON.parse(ingredient_serialized)

ingredients['drinks'].each do |ingredient|
  ing = Ingredient.create!(name: ingredient["strIngredient1"])
end




