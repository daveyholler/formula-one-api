class CreateDrivers < ActiveRecord::Migration[6.0]
  def change
    create_table :drivers do |t|
      t.integer :driverId, index: true
      t.string :driverRef
      t.string :number
      t.string :code
      t.string :forename
      t.string :surname
      t.string :dob
      t.string :nationality
      t.string :url

      t.timestamps
    end
  end
end
