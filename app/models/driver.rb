class Driver < ApplicationRecord


    # has_many :trips
    # has_many :locations
    # has_many :passengers, through: :locations
    
    # belongs_to :user

    # validates :first_name, presence: true
   
    # validates :phone_number, length: { is: 10 }, numericality: true
    

    has_many :trips
    has_many :passengers, through: :trips
  
    # def accept_trip(passenger, pick_up, drop_off, price)
    #   Trip.create(passenger: passenger, pick_up: pick_up_longitude, pick_up_latitude, drop_off: drop_off_longitude, drop_off_latitude, price: price, driver: self)
    # end
  
    # def total_income
    #   self.trip.sum(:price)
    # end
  
    # def cancel_trip(passenger)
    #   trip = Trip.find_by(driver_id: driver.id, passenger_id: passenger.id)
    #   if trip
    #     trip.destroy
    #   else
    #     puts "#{driver.first_name} trip declined #{passenger.first_name}!"
    #   end
    # end
  
  
end
