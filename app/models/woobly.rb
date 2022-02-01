class Woobly < ApplicationRecord
    has_many :woobly_snacks, dependent: :destroy
    has_many :snacks, through: :woobly_snacks


    validates :name, presence: true


end

# W -< WS >- S

# must have a name
