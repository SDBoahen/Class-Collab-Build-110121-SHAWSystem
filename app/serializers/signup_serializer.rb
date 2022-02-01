class SignupSerializer < ActiveModel::Serializer
  
  # attributes :activity

  attributes :id, :time

  # has_one :camper
  # has_one :activity

  # def activity

  #   {
  #     "test": "Woobly"
  #   }

  # end


end
