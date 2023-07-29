class AddStartDateToFlight < ActiveRecord::Migration[7.0]
  def change
    add_column :flights, :start_date, :date
  end
end
