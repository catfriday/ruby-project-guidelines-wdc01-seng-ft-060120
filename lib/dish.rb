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

    
end