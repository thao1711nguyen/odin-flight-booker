class RemoveReferenceFromBookingPassengers < ActiveRecord::Migration[7.0]
  def change
    remove_reference :bookings_passengers, :flight
  end
end
