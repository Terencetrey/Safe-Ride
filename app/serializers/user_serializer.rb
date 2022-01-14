class UserSerializer < ActiveModel::Serializer
  attributes :id, :first_name, :last_name, :phone_number, :gender, :email, :password_digest
end
