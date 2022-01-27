class UserSerializer < ActiveModel::Serializer
  
  attributes :id, :first_name, :last_name, :gender, :phone_number, :email
  
end
