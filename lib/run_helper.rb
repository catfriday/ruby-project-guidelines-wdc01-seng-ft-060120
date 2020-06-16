#require_relative '../config/environment'
def found_by_ingredients(array)
    array.each do  |dish|
        dish.dish_to_screen
    end
end

def my_shopping_list(dish_array)
    #iterates through the array, pulls out the ingredient_names, puts them into a list and formats the list
    array = dish_array.map {|dish| dish.ingredient_names}.flatten.uniq
    puts "*** Here is your shopping list.***"
    array.each do |ingredient_name|
        puts "- #{ingredient_name}"
    end
end