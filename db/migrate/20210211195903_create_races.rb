class CreateRaces < ActiveRecord::Migration[6.0]
  def change
    create_table :races do |t|
      t.integer :raceId, index: true
      t.integer :year
      t.integer :round
      t.integer :circuitId, index: true
      t.string :name
      t.string :date
      t.string :time
      t.string :url

      t.timestamps
    end
  end
end
