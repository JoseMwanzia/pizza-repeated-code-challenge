class AddColumnsToPizzas < ActiveRecord::Migration[7.0]
  def change
    add_column :pizzas, :name, :string
    add_column :pizzas, :ingredients, :string
  end
end
