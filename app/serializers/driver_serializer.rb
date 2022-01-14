class DriverSerializer < ActiveModel::Serializer
  attributes :id, :driver_name, :phone_number, :driving_license, :ride_status, :total_rides, :driver_id
end
