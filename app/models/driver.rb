class Driver < ApplicationRecord
    has_many :trips
    has_many :passengers, through: :trips


    validates :first_name, presence: true
    validates :last_name, presence: true
    validates :phone_number, length: { is: 10 }, numericality: true
    

def full_name
    "#{first_name} #{last_name}"
 end




 def accept_trip(passenger, pick_up, drop_off, price)
    Trip.create(passenger: passenger, pick_up: pick_up, drop_off: drop_off, price: price, driver: self)
  end

  def total_income
    self.trips.sum(:price)
  end

  def cancel_trip(passenger)
    trip = Trip.find_by(driver_id: self.id, passenger_id: passenger.id)
    if trip
      trip.destroy
    else
      puts "#{self.first_name} has no scheduled trip with #{passenger.first_name}!"
    end
  end
  

end
