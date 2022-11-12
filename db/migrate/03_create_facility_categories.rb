class CreateFacilityCategories < ActiveRecord::Migration[7.0]
  def change
    create_table :facility_categories do |t|
      t.integer :facility_id
      t.integer :category_id

      t.timestamps
    end
  end
end
