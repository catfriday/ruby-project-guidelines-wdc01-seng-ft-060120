class Dish < ActiveRecord::Base
    has_many :ingredient_dishes
    has_many :ingredients, through: :ingredient_dishes
end