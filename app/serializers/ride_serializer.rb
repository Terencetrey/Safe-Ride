class RideSerializer < ActiveModel::Serializer
  attributes :id, :pick_up_time, :amount, :pick_up_longitude, :pick_up_latitude,
   :drop_off_longitude, :drop_off_latitude, :passenger_id, :driver_id
end
