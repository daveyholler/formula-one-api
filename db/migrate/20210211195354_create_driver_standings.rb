class CreateDriverStandings < ActiveRecord::Migration[6.0]
  def change
    create_table :driver_standings do |t|
      t.integer :driverStandingsId, index: true
      t.integer :raceId, index: true
      t.integer :driverId, index: true
      t.integer :points
      t.integer :position
      t.string :positionText
      t.integer :wins

      t.timestamps
    end
  end
end
