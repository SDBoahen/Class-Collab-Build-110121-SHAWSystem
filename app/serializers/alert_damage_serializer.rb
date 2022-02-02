class AlertDamageSerializer < ActiveModel::Serializer
  attributes :id, :level
  has_one :alert
  has_one :damage_type
end
