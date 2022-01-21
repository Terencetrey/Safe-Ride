class User < ApplicationRecord
     has_secure_password

    # ..
    has_many :trips, class_name: "Trip", foreign_key: "driver_id"
    has_many :trips, class_name: "Trip", foreign_key: "passenger_id"

    validates :phone_number, uniqueness: true
    validates :password, presence: true, length: { in: 5..20 }
    # belongs_to :driver, class_name: "trips", foreign_key: "driver_id", optional: true
    # belongs_to :passenger, class_name: "trips", foreign_key: "passenger_id", optional: true
    # attr_accessor :password, :password_confirmation 
    # validates :phone_number, format: /\w+@\w+\.{1}[a-zA-Z]{2,}/, presence: true, uniqueness: true
end
