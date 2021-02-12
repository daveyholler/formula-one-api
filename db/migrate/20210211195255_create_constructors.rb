class CreateConstructors < ActiveRecord::Migration[6.0]
  def change
    create_table :constructors do |t|
      t.integer :constructorId, index: true
      t.string :constructorRef
      t.string :name
      t.string :nationality
      t.string :url

      t.timestamps
    end
  end
end
