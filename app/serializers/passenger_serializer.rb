class PassengerSerializer < ActiveModel::Serializer
  attributes :id, :first_name, :phone_number, :passenger_id
end
