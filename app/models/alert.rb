class Alert < ApplicationRecord
  # Association Macros
  ##  User  -<  🌟 Alert  -<  AlertDamages   >- DamageTypes
  belongs_to :user

  has_many :alert_damages
  has_many :damage_types, through: :alert_damages




end



  # Ug -< A #<a1> -<  #<a1>[:a_id]  AD  [ :dt_id 1 ]#<dt1>    >- DT
  # Ug -< A #<a1> -<  #<a1>[:a_id]  AD  [ :dt_id 2 ]#<dt2>    >- DT
  # Ug -< A #<a1> -<  #<a1>[:a_id]  AD  [ :dt_id 3 ]#<dt3>    >- DT