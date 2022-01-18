class User < ApplicationRecord
    
    has_secure_password
    # ..
    validates :phone_number, format: /\w+@\w+\.{1}[a-zA-Z]{2,}/, presence: true, uniqueness: true
end
