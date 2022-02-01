class WooblyShowSerializer < ActiveModel::Serializer
  attributes :id, :name, :hometown # :snacks

  has_many :snacks



  # {
  #   "id": 1,
  #   "name": "Woobly",
  #   "hometown": "Austin",
  #   "snacks": [
  #     {
  #         "id": 1,
  #         "name": "Ice Cream",
  #         "ingredients": "Ice, Cream, Happiness"
  #     },
  #     {
  #       "id": 2,
  #       "name": "Chips",
  #       "ingredients": "Potatoes, Salt"
  #     }
  #   ]
  # }

end
