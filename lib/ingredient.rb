class Ingredient < ActiveRecord::Base
    has_many :ingredient_dishes
    has_many :dishes, through: :ingredient_dishes
end