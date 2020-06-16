Dish.destroy_all
Ingredient.destroy_all
IngredientDish.destroy_all

lasagna = Dish.create(name:"lasagna")
chicken_parm = Dish.create(name:"chicken parm")

tomato_sauce = Ingredient.create(name:"tomato sauce")
mozz = Ingredient.create(name:"mozz")
olive_oil = Ingredient.create(name:"olive oil")
basil = Ingredient.create(name:"basil")
lasagna.ingredients << tomato_sauce
lasagna.ingredients << mozz
lasagna.ingredients << basil

chicken_parm.ingredients << tomato_sauce
chicken_parm.ingredients << mozz
chicken_parm.ingredients << olive_oil

