lasagna = Dish.new(name:"lasagna")
chicken_parm = Dish.new(name:"chicken parm")

tomato_sauce = Ingredient.new(name:"tomato sauce")
mozz = Ingredient.new(name:"mozz")
olive_oil = Ingredient.new(name:"olive oil")
basil = Ingredient.new(name:"basil")
lasagna.ingredients << tomato_sauce
lasagna.ingredients << mozz
lasagna.ingredients << basil

chicken_parm.ingredients << tomato_sauce
chicken_parm.ingredients << mozz
chicken_parm.ingredients << olive_oil

