class Signup < ApplicationRecord
  belongs_to :camper
  belongs_to :activity

  validates :time, numericality: { greater_than: -1, less_than: 24 }


end

# Add validations to the `Signup` model:

# - must have a `time` between 0 and 23 (referring to the hour of day for the
#   activity)