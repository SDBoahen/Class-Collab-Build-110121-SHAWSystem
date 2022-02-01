class Snack < ApplicationRecord
    has_many :woobly_snacks
    has_many :wooblies, through: :woobly_snacks


    validates :name, presence: true
    validates :name, uniqueness:true


end

# S -< WS >- W

# - must have a `name`
# - `name` must be unique
