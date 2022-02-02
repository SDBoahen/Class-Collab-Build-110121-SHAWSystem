class AlertSerializer < ActiveModel::Serializer
  attributes :id, :title, :description, :alert_time
  has_one :user
end
