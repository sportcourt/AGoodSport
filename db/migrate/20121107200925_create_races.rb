class CreateRaces < ActiveRecord::Migration
  def change
    create_table :races do |t|
      t.string :name
      t.string :city
      t.string :state
      t.float :distance
      t.string :unit

      t.timestamps
    end
  end
end
