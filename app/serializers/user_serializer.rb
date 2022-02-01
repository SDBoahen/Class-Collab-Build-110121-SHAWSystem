class UserSerializer < ActiveModel::Serializer
  attributes :id, :name, :username, :email, :current_location, :password_digest
end
