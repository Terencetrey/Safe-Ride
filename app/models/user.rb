class User < ApplicationRecord
    has_many :drivers
    has_many :passengers




    has_secure_password
end
