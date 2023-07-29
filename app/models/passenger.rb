class Passenger < ApplicationRecord

    validates :name, presence: true 
    validates :email, presence: true

    
    has_and_belongs_to_many :bookings 
    has_many :flights, through: :bookings
    
end
