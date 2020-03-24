class CreateRides < ActiveRecord::Migration[5.2]
  def change
    create_table :rides do |t|
      t.string :ride_status
      t.string :passenger_zip
    end
  end
end
