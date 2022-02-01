class RestaurantPizzaSerializer < ActiveModel::Serializer
  attributes :id, :price
  def pizza
    object.pizza
  end
end
