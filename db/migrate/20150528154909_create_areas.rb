class CreateAreas < ActiveRecord::Migration
  def change
    create_table :areas do |t|
      t.string :name
      t.integer :country_id

      t.timestamps
    end
    add_index :areas, [:name, :country_id], :unique => true
  end
end
