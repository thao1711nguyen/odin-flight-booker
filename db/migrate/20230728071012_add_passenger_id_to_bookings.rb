class AddPassengerIdToBookings < ActiveRecord::Migration[7.0]
  def change
    add_reference :bookings, :passenger, foreign_key: true, index: true
  end
end
