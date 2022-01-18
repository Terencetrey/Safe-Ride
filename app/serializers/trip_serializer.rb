class TripSerializer < ActiveModel::Serializer
  attributes :id, :driver_id, :passenger_id, :pick_up_longitude, :pick_up_latitude, :drop_off_longitude, :drop_off_latitude
end
