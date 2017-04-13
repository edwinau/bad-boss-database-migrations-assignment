class RestoreLocationsTable < ActiveRecord::Migration[5.0]
  def change
    reversible do |dir|
      dir.up do
        add_column :Locations, :street_name, :string
        add_column :Locations, :street_number, :integer
        remove_column :Locations, :weather

      end
      dir.down do
        remove_column :Locations, :street_name
        remove_column :Locations, :street_number
        add_column :Locations, :weather, :string
      end
    end
  end
end
