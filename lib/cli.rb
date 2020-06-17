class CLI

    attr_accessor :user_input

    #require_relative '../config/environment'
    def list_recipes(array_of_dishes)
        #array_of_dishes is an array of dish instances (ex from find_by_ingredients) and formats all of them using 
        #dish_to_screen
        array_of_dishes.each do  |dish|
            dish.dish_to_screen
        end
    end

    def my_shopping_list(array_of_dishes)
        #iterates through the array, pulls out the ingredient_names, puts them into a list and formats the list
        array = array_of_dishes.map {|dish| dish.ingredient_names}.flatten.uniq
        puts "*** Here is your shopping list.***"
        array.each do |ingredient_name|
            puts "- #{ingredient_name}"
        end
    end

    def list_commands
        # Home menu
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
        #Welcome message and runs list commands 
        puts "\n"
        puts "".center(100, "-*")
        puts " RECIFIND ".center(100, "-*")
        puts " Welcome to Recifind: the word's best recipe finder! ".center(100, "-*")
        puts "".center(100, "-*")
        puts "".center(100, "-*")
        puts "\n\n"
        self.list_commands
    end

    def get_user_input_main
        @user_input = gets.chomp()
        until @user_input == "exit"
            if @user_input == "help"
                    list_commands
                    @user_input = gets.chomp()
                elsif @user_input.downcase == "find dish" 
                    get_user_input_find_dish
                    #add find_dish method
                elsif @user_input.downcase == "random dish"
                
                      Dish.find_random_dish 
                      @user_input = "done" 
                elsif @user_input.downcase == "my dishes"
                        puts "these are your dishes"
                        #give them list of recipes
                elsif @user_input.downcase == "shopping list"
                    puts "here is your shopping list!"
                elsif @user_input.downcase == "done"
                    puts "Would you like to do anything else? Type exit to leave the program or type help to see main menu."
                    @user_input = gets.chomp()
                else
                    puts "I'm sorry, I don't understand"
                    puts "please enter another command"
                    @user_input.downcase = gets.chomp
            end    
        end
    end

    def run
        self.welcome_message
        self.get_user_input_main
    end 

    def get_user_input_find_dish
        puts "Please enter an ingredient."
        ingredients_array = [] #.uniq
        @user_input = gets.chomp()
        while @user_input != "done" do
            # if user_input == "help"
            #     puts "FIND DISH MENU"
            #     #make the menu for find dish user input
            #     user_input = gets.chomp()
            if Ingredient.all_names.include?(@user_input)
                ingredients_array << @user_input
                puts ingredients_array ##formatted
                puts "type 'done' to get your ingredients"
                @user_input = gets.chomp()
            else
                puts "Sorry we don't have any recipes with that ingredient."
                @user_input = gets.chomp
            end
        end    
        a = Dish.find_by_ingredients(ingredients_array)
        list_recipes(a)
    end
    
end