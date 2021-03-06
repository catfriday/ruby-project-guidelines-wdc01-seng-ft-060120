class Dish < ActiveRecord::Base
    has_many :ingredient_dishes
    has_many :ingredients, through: :ingredient_dishes

    def dish_to_screen 
        #Formats dish to put out to terminal, lists name of dish, link to dish recipe, and a list of ingredients
        #lasagna.dish_to_screen
        puts Rainbow("".center(100, "-*")).crimson
        puts Rainbow("-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*").crimson  + Rainbow(" #{self.name.upcase} ".center(32, " ")).yellow + Rainbow("-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*").crimson
        puts Rainbow("".center(100, "-*")).crimson
        puts "\n"
        puts Rainbow("INGREDIENTS".center(100)).yellow
        puts "\n"
        self.ingredients.each do |ingredient|
            puts "#{ingredient.name}".center(100)
        end 
        puts "\n"
    end

    def self.find_random_dish
        #finds a random dish and RETURNS the dish object Dish.find_random_dish
        self.all.sample.dish_to_screen
    end

    def self.find_ingredients(dish_name)
        #takes a dish name and returns the dish and the ingredients Dish.find_ingredients(lasagna)
        found_dish = self.find_by(name: dish_name)
        found_dish.dish_to_screen
    end

    def ingredient_names #returns an array of the ingredients for a single recipe lasagna.ingredient_names
        self.ingredients.map do |ingredient|
            ingredient.name.downcase
        end
    end

    def self.find_by_ingredients(ingredients_array)
        #takes an array of ingredients (provided by user) and returns all dishes that contain ALL of those ingredients
        dish_array = self.all.select do |dish|
            (ingredients_array - dish.ingredient_names).empty?   
        end
        dish_array.sample(3) 
    end    
end