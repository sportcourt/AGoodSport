class RacePartner < ActiveRecord::Base
  attr_accessible :available_slots, :charity_id, :donation_amount, :race_id, :total_slots
  
  belongs_to :race
  belongs_to :charity
  
end
