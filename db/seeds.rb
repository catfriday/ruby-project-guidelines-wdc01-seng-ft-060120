Dish.destroy_all
Ingredient.destroy_all
IngredientDish.destroy_all

lasagna = Dish.create(name:"lasagna")
chicken_parm = Dish.create(name:"chicken parmesan")
spaghetti = Dish.create(name: "spaghetti")
hummus = Dish.create(name: "hummus")
tacos = Dish.create(name: "tacos")
mac = Dish.create(name: "mac & cheese")
caesar = Dish.create(name: "caesar salad")
omelette = Dish.create(name: "omelette")
red_beans = Dish.create(name: "red beans & rice")
cookies = Dish.create(name: "chocolate chip cookies")



tomato_sauce = Ingredient.create(name:"tomato sauce")
mozz = Ingredient.create(name:"mozzarella")
olive_oil = Ingredient.create(name:"olive oil")
noodles = Ingredient.create(name: "noodles")
basil = Ingredient.create(name:"basil")
chickpeas = Ingredient.create(name:"chickpeas")
tahini = Ingredient.create(name:"tahini")
lemon = Ingredient.create(name:"lemon")
garlic = Ingredient.create(name:"garlic")
tortilla = Ingredient.create(name:"tortilla")
meat = Ingredient.create(name: "meat")
lettuce = Ingredient.create(name:"lettuce")
tomato = Ingredient.create(name:"tomato")
cheese = Ingredient.create(name:"cheese")
milk = Ingredient.create(name:"milk")
parmesan = Ingredient.create(name: "parmesan cheese")
dressing = Ingredient.create(name:"dressing")
croutons = Ingredient.create(name:"croutons")
egg = Ingredient.create(name:"egg")
beans = Ingredient.create(name:"red beans")
rice = Ingredient.create(name:"rice")
chocolate_chips = Ingredient.create(name:"chocolate chips")
flour = Ingredient.create(name:"flour")
butter = Ingredient.create(name:"butter")






lasagna.ingredients += [tomato_sauce, mozz, basil, noodles, olive_oil]

chicken_parm.ingredients += [tomato_sauce, mozz, olive_oil, meat]

hummus.ingredients += [chickpeas, lemon, garlic, tahini]

tacos.ingredients += [tortilla, meat, lettuce, tomato, cheese, beans]

mac.ingredients += [noodles, cheese, milk]

caesar.ingredients += [lettuce, parmesan, dressing, croutons]

omelette.ingredients += [egg, cheese, tomato]

red_beans.ingredients += [beans, rice, garlic, tomato, meat]

cookies.ingredients += [egg, chocolate_chips, flour, butter]

spaghetti.ingredients += [meat, noodles, tomato_sauce, garlic, basil, olive_oil, parmesan, tomato]






