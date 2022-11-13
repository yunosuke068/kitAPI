class CreateEvents < ActiveRecord::Migration[7.0]
  def change
    create_table :events do |t|
      t.string :name
      t.string :description
      t.string :day
      t.integer :facility_id

      t.timestamps
    end
  end
end
