class BookingsPassenger < ApplicationRecord

    belongs_to :flight
    has_many :passengers
    
end
