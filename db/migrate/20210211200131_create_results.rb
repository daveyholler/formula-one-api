class CreateResults < ActiveRecord::Migration[6.0]
  def change
    create_table :results do |t|
      t.integer :resultId, index: true
      t.integer :raceId, index: true
      t.integer :driverId, index: true
      t.integer :constructorId, index: true
      t.string :number
      t.integer :grid
      t.integer :position
      t.string :positionText
      t.string :positionOrder
      t.integer :points
      t.integer :laps
      t.string :time
      t.bigint :milliseconds
      t.string :fastestLap
      t.integer :rank
      t.string :fastestLapTime
      t.float :fastestLapSpeed
      t.integer :statusId, index: true

      t.timestamps
    end
  end
end
