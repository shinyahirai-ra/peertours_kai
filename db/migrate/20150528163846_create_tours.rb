class CreateTours < ActiveRecord::Migration
  def change
    create_table :tours do |t|
      t.string :title, unique: true
      t.integer :area_id, null: false
      t.string :recommend_one
      t.string :recommend_two
      t.string :recommend_three
      t.text :included
      t.integer :number_of_people, null: false
      t.string :meeting_place, null: false
      t.integer :price, null: false
      t.integer :time, null: false

      t.timestamps
    end
    add_index :tours, [:title, :area_id], unique: true
  end
end
