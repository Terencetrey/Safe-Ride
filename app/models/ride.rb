class Ride < ApplicationRecord
    belongs_to :passenger
    belongs_to :driver

    validates :passenger_id, :driver_id, presence: true
    validates :amount, presence: true, numericality: {only_integer: true, greater_than: 0 } 
end


# class CabNotFound < StandardError
#     attr_accessor :message, :options
#     def initialize(message=self.class.to_s, options={})
#       @message = message
#       @options = options
#     end
# end

