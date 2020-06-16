require_relative '../config/environment'
require_relative './run_helper.rb'
# Dish.find(1).dish_to_screen

# puts Dish.find_ingredients('lasagna')
a = Dish.find_by_ingredients(["tomato sauce", "mozz", "basil"])
found_by_ingredients(a)
puts "HELLO WORLD"
