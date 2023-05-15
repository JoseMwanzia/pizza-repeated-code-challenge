class AddColumnsToRestaurantPizzas < ActiveRecord::Migration[7.0]
  def change
    add_column :restaurant_pizzas, :name, :string
    add_column :restaurant_pizzas, :price, :integer
    add_reference :restaurant_pizzas, :pizza, null: false, foreign_key: true
    add_reference :restaurant_pizzas, :restaurant, null: false, foreign_key: true
    # add_column :restaurant_pizzas, :timestamps, :string
  end
end
