class Passenger < ApplicationRecord
     has_many :rides

  validates :name, presence: true, uniqueness: true
  validates :phone_num, presence: true

  def total_paid
    total = 0
    self.rides.each do |ride|
      total += ride.amount
    end

    return total.to_f/100.round(2)
end
