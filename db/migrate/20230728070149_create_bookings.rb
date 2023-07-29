class CreateBookings < ActiveRecord::Migration[7.0]
  def change
    create_table :bookings do |t|
      t.integer :number_tickets
      t.belongs_to :flight

      t.timestamps
    end
  end
end
