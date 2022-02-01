class WooblySnack < ApplicationRecord
  belongs_to :woobly
  belongs_to :snack
  

  validates :price, numericality: { greater_than: 0, less_than: 1000000 }

  
end

# - must have a `price` between 1 and 1000000
