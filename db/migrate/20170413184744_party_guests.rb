class PartyGuests < ActiveRecord::Migration[5.0]
  def change
    create_table :PartyGuests do |t|
      t.string :first_name
      t.string :last_name
      t.string :diet_restrict
      t.integer :salary
      t.integer :kids_num
      t.string :vulnerablities
      t.string :illnesses
      t.string :medication
      t.string :voting_pref
    end
  end
end
