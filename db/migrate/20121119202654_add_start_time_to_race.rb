class AddStartTimeToRace < ActiveRecord::Migration
  def change
    add_column :races, :start_time, :datetime
    add_column :races, :notes, :text
  end
end
