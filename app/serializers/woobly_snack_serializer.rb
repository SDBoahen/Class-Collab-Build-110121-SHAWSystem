class WooblySnackSerializer < ActiveModel::Serializer
  attributes :name, :ingredients, :being_sold_for #, :name
  # :id, :price, :special_additional_ingredients, :marked_as_healthy 

  def name
    object.snack.name
  end

  def ingredients
    object.snack.ingredients
  end

  def being_sold_for
    object.price
  end



  # has_one :woobly
  # has_one :snack
end

# W -< WS >- S



  # {
    # "name": "Ice Cream",
    # "ingredients": "Ice, Cream, Happiness",
    # "being_sold_for": 5.55 
  # }