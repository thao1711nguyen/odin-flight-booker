class FlightsController < ApplicationController

    def index 
        @airports = Airport.airport_options
        @flight_dates = Flight.all.map(&:date).uniq
        @number_tickets = params[:number_tickets]
        departure_airport_id = params[:departure_airport]
        arrival_airport_id = params[:arrival_airport]
        flight_date = params[:flight_date]
        
        # @flight_date_test = params[:flight_date]
    
        if departure_airport_id.nil? && arrival_airport_id.nil? &&
            flight_date.nil?
            @searched_flights = nil
        else 
            @searched_flights = Flight.find_flights(departure_airport_id, arrival_airport_id, flight_date)
        end
    end 
end
