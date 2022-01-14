class Driver < ApplicationRecord
    has_many :rides

    validates :name, presence: true, uniqueness: true
    validates :vin, presence: true, uniqueness: true
  
    def avg_rating
      if self.rides.count == 0
        return "No rides yet"
      else
        total_rating = 0
        ride_count = 0
  
        self.rides.all.each do |ride|
          if ride.rating
            total_rating += ride.rating
            ride_count += 1
          end
        end
  
        average_rating = total_rating.to_f/ride_count
        
        return average_rating.round(1)
      end
    end
  
    def total_earnings
      subtotal = 0
  
      self.rides.each do |ride|
        ride.amount -= 1.65
        subtotal += ride.amount
      end
      total = (subtotal * 0.8)/100
      return total.round(2)
    end
end
