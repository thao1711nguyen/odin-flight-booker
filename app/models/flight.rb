class Flight < ApplicationRecord

  validates :start_datetime, presence: true 
  validates :flight_duration, presence: true 
  
  belongs_to :departure_airport, class_name: "Airport"
  belongs_to :arrival_airport, class_name: "Airport"

  
  has_many :bookings
  has_many :passengers, through: :bookings 
  
   
  def date
    start_date.strftime("%d/%m/%Y") 
  end

  def time 
    start_datetime.strftime("%H:%M")
  end

  def self.find_flights(departure_airport_id, arrival_airport_id, flight_date)
    flight_date = Date.parse(flight_date, "%d/%m/%Y")
    Flight.where("departure_airport_id = ? AND 
                  arrival_airport_id = ? AND 
                  start_date = ?", 
                departure_airport_id, arrival_airport_id, flight_date) 
    
  end 

  
end
