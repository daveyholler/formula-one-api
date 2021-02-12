class CreatePitStops < ActiveRecord::Migration[6.0]
  def change
    create_table :pit_stops do |t|
      t.integer :raceId, index: true
      t.integer :driverId, index: true
      t.integer :stop
      t.integer :lap
      t.string :time
      t.string :duration
      t.integer :milliseconds

      t.timestamps
    end
  end
end
