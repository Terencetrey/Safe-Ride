class PassengerSerializer < ActiveModel::Serializer
  attributes :id, :phone_number, :pick_up_time, :ride_rate, :ride_status, :passenger_id
end
