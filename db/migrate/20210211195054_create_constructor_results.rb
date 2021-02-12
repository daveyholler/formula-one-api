class CreateConstructorResults < ActiveRecord::Migration[6.0]
  def change
    create_table :constructor_results do |t|
      t.integer :constructorResultId, index: true
      t.integer :raceId, index: true
      t.integer :constructorId, index: true
      t.integer :points

      t.timestamps
    end
  end
end
