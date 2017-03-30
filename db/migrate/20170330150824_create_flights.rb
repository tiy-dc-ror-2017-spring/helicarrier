class CreateFlights < ActiveRecord::Migration[5.0]
  def change
    create_table :flights do |t|
      t.string :flight_number
      t.string :airline
      t.integer :number_of_passengers
      t.datetime :arrived_at
      t.datetime :stocked_at
      t.datetime :cleaned_at
      t.string :gate
      t.references :flight_route, foreign_key: true

      t.timestamps
    end
  end
end
