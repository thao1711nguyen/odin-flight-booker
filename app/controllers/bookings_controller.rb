class BookingsController < ApplicationController

    def new 
        @flight = Flight.find(params[:chosen_flight])
        @booking = @flight.bookings.build  
        @tickets = params[:number_tickets].to_i
        
    end
    def show 
        @booking = Booking.find(params[:id])
        @flight = @booking.flight
        @passengers = @booking.passengers
    end
    def create 
        @flight = Flight.find(params[:booking][:chosen_flight])
        @booking = @flight.bookings.build(booking_params)
        
        if @booking.save
            @booking.passengers.each do |passenger|
                PassengerMailer.with(passenger: passenger, booking: @booking, flight: @flight).confirmation_email.deliver_later
            end
            redirect_to @booking 
        else 
            render :new, status: :unprocessable_entity 
        end
    end

    private 
    def booking_params 
        params.require(:booking).permit(:number_tickets, 
                                        passengers_attributes: [:name, :email])
    end
    
end
