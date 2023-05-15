class RestaurantPizzaSerializer < ActiveModel::Serializer
  attributes :id, :name
  belongs_to :pizza
end
