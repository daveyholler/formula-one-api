class CreateStatuses < ActiveRecord::Migration[6.0]
  def change
    create_table :statuses do |t|
      t.integer :statusId, index: true
      t.string :status

      t.timestamps
    end
  end
end
