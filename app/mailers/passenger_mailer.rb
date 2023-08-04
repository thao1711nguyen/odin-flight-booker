class PassengerMailer < ApplicationMailer
    default from: 'odin-flight@example.com'

    def confirmation_email 
        @passenger = params[:passenger]
        @booking = params[:booking]
        @flight = params[:flight]
        mail(to: @passenger.email, subject: 'Confirm flight booking')
    end
end
