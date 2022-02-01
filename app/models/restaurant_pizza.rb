class RestaurantPizza < ApplicationRecord
    belongs_to :pizza
    belongs_to :restaurant
  
    # validates :price, inclusion: 1..30
    validates :price, numericality: { greater_than: 0, less_than: 31 }


end
