require_relative '../config/environment'
# Dish.find(1).dish_to_screen

# puts Dish.find_ingredients('lasagna')
a = Dish.find_by_ingredients(["tomato sauce"])
my_shopping_list(a)



