class CreateQualifyings < ActiveRecord::Migration[6.0]
  def change
    create_table :qualifyings do |t|
      t.integer :qualifyId, index: true
      t.integer :raceId, index: true
      t.integer :driverId, index: true
      t.integer :constructorId, index: true
      t.integer :number
      t.integer :position
      t.string :q1
      t.string :q2
      t.string :q3

      t.timestamps
    end
  end
end
