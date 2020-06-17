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
        puts Rainbow("".center(100, "-*")).crimson 
        puts Rainbow("-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-").crimson + Rainbow(" MENU ").yellow + Rainbow("-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-").crimson#.center(100, "-*")).yellow
        puts Rainbow("".center(100, "-*")).crimson
        puts Rainbow("\n1. Find Dish:").yellow + " Finds a delicious meal based on the ingredients you have at home"
        puts Rainbow("\n2. Random Dish:").yellow + " Finds a completely random dish (Warning: only for the adventurous)"
        puts Rainbow("\n3. My Dishes:").yellow + " Lists recipes you've added to 'My Dishes.'"
        puts Rainbow("\n4. Shopping List:").yellow + " Gives you a list of all the ingredients you'll need to start making your dishes\n\n"
        puts Rainbow("What would you like to do?\n\n").crimson
    end

    def welcome_message
        system 'clear'
        #Welcome message and runs list commands 
        puts "\n"
        puts Rainbow("".center(100, "-*")).crimson
        puts Rainbow("".center(100, "-*")).crimson
        puts Rainbow("-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-").crimson + Rainbow(" RECIFIND ").yellow + Rainbow("-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-").crimson#.center(100,"-*")).yellow
        puts Rainbow("-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*").crimson + Rainbow(" The world's best recipe finder! ").yellow + Rainbow("-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*").crimson#.center(100, "-*")).yellow
        puts Rainbow("".center(100, "-*")).crimson
        puts Rainbow("".center(100, "-*")).crimson
        puts "\n\n"
    end

    def get_user_input_main
        @user_input = gets.chomp()
        until @user_input == "exit"
            if @user_input == "help"
                    welcome_message
                    list_commands
                    @user_input = gets.chomp()
                elsif @user_input.downcase == "find dish"
                    #system "clear" 
                    get_user_input_find_dish
                    #add find_dish method
                elsif @user_input.downcase == "random dish"
                    #system "clear"
                    welcome_message
                    Dish.find_random_dish 
                    @user_input = "done" 
                elsif @user_input.downcase == "my dishes"
                        puts "these are your dishes"
                        #give them list of recipes
                elsif @user_input.downcase == "shopping list"
                    puts "here is your shopping list!"
                elsif @user_input.downcase == "done"
                    puts Rainbow("Would you like to do anything else? Type 'exit' to leave the program or type 'help' to see main menu.").yellow
                    @user_input = gets.chomp()
                else
                   # system "clear"
                    welcome_message
                    list_commands
                    puts Rainbow("I'm sorry, I don't understand\nPlease enter another command.").limegreen
                    @user_input = gets.chomp
            end    
        end
    end

    def run
        self.welcome_message
        self.list_commands
        self.get_user_input_main
    end 

    def get_user_input_find_dish
        welcome_message
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
                #system "clear"
                welcome_message
                puts Rainbow("You've added these ingredients:").yellow 
                puts ingredients_array ##formatted
                puts Rainbow("\nAdd another ingredient, or type 'done' when you are finished").yellow 
                @user_input = gets.chomp()
            else
                welcome_message
                puts Rainbow("Sorry we don't have any recipes with that ingredient.\n Please enter another ingredient.").limegreen
                @user_input = gets.chomp
            end
        end
        #system "clear"
        welcome_message    
        a = Dish.find_by_ingredients(ingredients_array)
        if a.empty?
            puts Rainbow("Sorry. We couldn't find any recipes with those ingredients.\n\n").limegreen
        else
            list_recipes(a)
        end
    end
    
end