class Ingredient < ActiveRecord::Base
    has_many :ingredient_dishes
    has_many :dishes, through: :ingredient_dishes


    def self.all_names
        #Returns an array of the names of all ingredients in our database
        self.all.map {|ingredient| ingredient.name}
    end
end