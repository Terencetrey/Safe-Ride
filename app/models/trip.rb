class Trip < ApplicationRecord
    belongs_to :driver
    belongs_to :passenger


    belongs_to :driver, class_name: "User", foreign_key: "driver_id"
    belongs_to :passenger, class_name: "User", foreign_key: "passenger_id"






    def print_details
        puts "#{self.driver.first_name} drove #{self.passenger.first_name} for $#{self.price} from #{self.pick_up_longitude} #{self.pick_up_latitude} to #{self.drop_off_longitude} #{self.drop_off_latitude}"
      end

end
