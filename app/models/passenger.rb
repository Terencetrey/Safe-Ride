class Passenger < ApplicationRecord
    has_many :trips
    has_many :drivers, through: :trips



    validates :first_name, :last_name, :phone, :organization, presence: true
    validates :phone, length: { is: 10 }, numericality: true






    def full_name
        first_name + " " + last_name
      end

end
