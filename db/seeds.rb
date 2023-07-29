# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
require "date"
Flight.destroy_all 
Airport.destroy_all 

flight_codes = ['NY',  'BLQ', 'LIN', 'PMO', 'HAM', 'HAJ', 'BOD', 'LYS', 'NCE', 'TLS']
flight_codes.each do |code|
    Airport.create(airport_code: "#{code}")
end
airports = Airport.all 
airports.each do |airport|
    departure_airport_id = airport.id 
    arrival_airport_id = airports.sample.id 
    loop do 
        break unless departure_airport_id == arrival_airport_id
        arrival_airport_id = airports.sample.id 
    end  
    day = rand(1..28)
    month = rand(7..12)
    2.times do |i|
        start_datetime = DateTime.new(2023, month, day, rand(0..23), rand(0..59))
        Flight.create(arrival_airport_id: arrival_airport_id, 
                    departure_airport_id: departure_airport_id, 
                    flight_duration: "3 hours", 
                    start_datetime: start_datetime, 
                    start_date: start_datetime.to_date)
    end
end


