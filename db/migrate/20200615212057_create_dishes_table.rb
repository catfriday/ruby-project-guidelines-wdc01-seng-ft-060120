class CreateDishesTable < ActiveRecord::Migration[6.0]
  def change
    create_table :dishes  do |t|
      t.string :name
      t.string :link
    end
  end
end
