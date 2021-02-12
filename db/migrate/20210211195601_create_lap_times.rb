class CreateLapTimes < ActiveRecord::Migration[6.0]
  def change
    create_table :lap_times do |t|
      t.integer :raceId, index: true
      t.integer :driverId, index: true
      t.integer :lap
      t.integer :position
      t.string :time
      t.integer :milliseconds

      t.timestamps
    end
  end
end
