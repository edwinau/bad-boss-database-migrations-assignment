class Locations < ActiveRecord::Migration[5.0]
  def change
    create_table :Locations do |t|
      t.string :city
      t.string :street_name
      t.integer :street_number
    end
  end
end
