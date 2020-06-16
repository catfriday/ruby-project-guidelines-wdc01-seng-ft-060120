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

def list_commands
    puts "".center(100, "-*")
    puts " MENU ".center(100, "-*")
    puts "".center(100, "-*")
    puts "\n1. Find Dish: Finds a delicious meal based on the ingredients you have at home"
    puts "\n2. Random Dish: Finds a completely random dish (Warning: only for the adventurous)"
    puts "\n3. My Dishes: Lists recipes you've added to 'My Dishes.'"
    puts "\n4. Shopping List: Gives you a list of all the ingredients you'll need to start making your dishes\n\n"
    puts "What would you like to do?\n\n"
end

def welcome_message
    puts "\n"
    puts "".center(100, "-*")
    puts " RECIFIND ".center(100, "-*")
    puts " Welcome to Recifind: the word's best recipe finder! ".center(100, "-*")
    puts " Type 'help' at anytime for a list of commands ".center(100, "-*")
    puts "".center(100, "-*")
    puts "".center(100, "-*")
    puts "\n\n"

end
def get_user_input
    user_input = gets.chomp()
    #if user_input == help
    #    list_commands
    #if user_input.downcase == find dish
    #    puts 
end