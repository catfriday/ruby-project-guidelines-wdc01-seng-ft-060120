class CreateIngredientsDishesTable < ActiveRecord::Migration[6.0]
  def change
    create_table :ingredients_dishes  do |t|
      t.integer :dish_id
      t.integer :ingredient_id 
    end
  end
end
