class PassengerSerializer < ActiveModel::Serializer
  attributes :id, :first_name, :phone_number, :user_id
end
