class CreateConstructorStandings < ActiveRecord::Migration[6.0]
  def change
    create_table :constructor_standings do |t|
      t.integer :constructorStandingId, index: true
      t.integer :raceId, index: true
      t.integer :constructorId, index: true
      t.integer :points
      t.integer :position
      t.string :positionText
      t.integer :wins

      t.timestamps
    end
  end
end
