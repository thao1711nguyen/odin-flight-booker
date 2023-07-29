class Airport < ApplicationRecord
    validates :airport_code, presence: true

    has_many :departing_flights, foreign_key: "departure_airport_id", class_name: "Flight"
    has_many :arriving_flights, foreign_key: "arrival_airport_id", class_name: "Flight"
    
    def self.airport_options 
        self.all.map{ |airport| [airport.airport_code, airport.id] }
    end 
end
