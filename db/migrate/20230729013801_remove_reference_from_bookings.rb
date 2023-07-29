class RemoveReferenceFromBookings < ActiveRecord::Migration[7.0]
  def change
    remove_reference :bookings, :passenger
    remove_reference :bookings, :flight
  end
end
