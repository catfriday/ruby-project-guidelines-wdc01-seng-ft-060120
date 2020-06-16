class CLI

    attr_accessor :user_input

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
    self.list_commands

end

def get_user_input_main
    user_input = gets.chomp()
    until user_input == "exit"
        if user_input == "help"
                list_commands
                 user_input = gets.chomp()
            elsif user_input.downcase == "find dish" 
                puts "Please type list of ingredients seperated only by commas"
                user_input = gets.chomp()
                #add find_dish method
            elsif user_input.downcase == "random dish"
                    puts "Here is your random dish recipe"
                    user_input = gets.chomp()
                    #add random_dish method 
        end    
    end
end

    def run
        self.welcome_message
        self.get_user_input_main
    end 



end