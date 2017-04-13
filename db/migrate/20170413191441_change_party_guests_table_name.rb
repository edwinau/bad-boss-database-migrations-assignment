class ChangePartyGuestsTableName < ActiveRecord::Migration[5.0]
  def change
    rename_table :PartyGuests, :widgets
  end
end
