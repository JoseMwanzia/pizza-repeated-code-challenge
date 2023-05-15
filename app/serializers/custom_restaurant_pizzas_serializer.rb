class CustomRestaurantPizzasSerializer < ActiveModel::Serializer
  attributes :id, :name, :ingredients
  has_many :pizzas
end
