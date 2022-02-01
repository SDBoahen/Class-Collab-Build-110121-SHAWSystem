class SnackShowSerializer < ActiveModel::Serializer
  attributes :id, :name, :ingredients

  has_many :wooblies
end
