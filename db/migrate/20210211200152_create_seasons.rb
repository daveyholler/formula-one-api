class CreateSeasons < ActiveRecord::Migration[6.0]
  def change
    create_table :seasons do |t|
      t.integer :year, index: true
      t.string :url

      t.timestamps
    end
  end
end
