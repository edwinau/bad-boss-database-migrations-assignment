class ChangeLocations < ActiveRecord::Migration[5.0]
  def change
    reversible do |dir|
      dir.up do
        remove_column :Locations, :street_name
        remove_column :Locations, :street_number
        add_column :Locations, :weather, :string

      end
      dir.down do
        add_column :Locations, :street_name, :string
        add_column :Locations, :street_number, :integer
        remove_column :Locations, :weather
      end
    end
  end
end


# def change
#   create_table :Locations do |t|
#     t.string :city
#     t.string :street_name
#     t.integer :street_number
#   end
# end
