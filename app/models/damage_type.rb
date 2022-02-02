class DamageType < ApplicationRecord
    # Association Macros
    ##  User  -<  Alert  -<  AlertDamages   >- 🌟 DamageTypes
    has_many :alert_damages
    has_many :alerts, through: :alert_damages


end
