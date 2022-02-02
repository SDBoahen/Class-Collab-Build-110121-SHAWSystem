class AlertDamage < ApplicationRecord
  # Association Macros
  ##  User  -<  Alert  -<  🌟 AlertDamages   >- DamageTypes
  belongs_to :alert
  belongs_to :damage_type


end
