class CreateFlights < ActiveRecord::Migration[7.0]
  def change
    create_table :flights do |t|
      t.datetime :start_datetime
      t.string :flight_duration
      t.belongs_to :departure_airport 
      t.belongs_to :arrival_airport

      t.timestamps
    end
  end
end
