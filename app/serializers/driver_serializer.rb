class DriverSerializer < ActiveModel::Serializer
  attributes :id, :first_name, :phone_number, :ride_status, :total_rides, :driver_id
end
