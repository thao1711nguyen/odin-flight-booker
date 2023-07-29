class CreateTableBookingsPassengers < ActiveRecord::Migration[7.0]
  def change
    create_table :bookings_passengers do |t|
      t.belongs_to :booking 
      t.belongs_to :passenger 
      t.belongs_to :flight 
      t.timestamps
    end
  end
end
