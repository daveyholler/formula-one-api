class CreateCircuits < ActiveRecord::Migration[6.0]
  def change
    create_table :circuits do |t|
      t.integer :circuitId, index: true
      t.string :circuitRef
      t.string :name
      t.string :location
      t.string :country
      t.float :lat
      t.float :lng
      t.string :alt
      t.string :url

      t.timestamps
    end
  end
end
