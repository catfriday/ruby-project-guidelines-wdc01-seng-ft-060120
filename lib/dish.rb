class Dish < ActiveRecord::Base
    has_many :ingredient_dishes
    has_many :ingredients, through: :ingredient_dishes

    def dish_to_screen
        #formats dish for viewing pleasure in CL
        puts "*** #{self.name}: #{self.link} ***"
        puts "INGREDIENTS"
        self.ingredients.each do |ingredient|
            puts "- #{ingredient.name}"
        end 
    end

    def self.find_random_dish
        #finds a random dish and RETURNS it
        self.all.sample
    end

    def self.find_ingredients(dish_name)
        found_dish = self.find_by(name: dish_name)
        found_dish.dish_to_screen
    end

    def ingredient_names
        self.ingredients.map do |ingredient|
            ingredient.name.downcase
        end
    end

    def self.find_by_ingredients(ingredients_array)
        self.all.select do |dish|
            (ingredients_array - dish.ingredient_names).empty?   
        end 
    end    
end