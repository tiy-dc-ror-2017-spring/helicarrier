class CreateFlightRoutes < ActiveRecord::Migration[5.0]
  def change
    create_table :flight_routes do |t|
      t.string :origin
      t.string :destination
      t.boolean :food

      t.timestamps
    end
  end
end
