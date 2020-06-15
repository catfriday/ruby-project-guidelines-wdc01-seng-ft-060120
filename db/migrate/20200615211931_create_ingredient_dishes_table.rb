class CreateIngredientDishesTable < ActiveRecord::Migration[6.0]
  def change
    create_table :ingredient_dishes  do |t|
      t.integer :dish_id
      t.integer :ingredient_id 
    end
  end
end
