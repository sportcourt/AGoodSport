class CreateRacePartners < ActiveRecord::Migration
  def change
    create_table :race_partners do |t|
      t.integer :race_id
      t.integer :charity_id
      t.integer :total_slots
      t.integer :available_slots
      t.integer :donation_amount

      t.timestamps
    end
  end
end
