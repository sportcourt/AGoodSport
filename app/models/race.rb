class Race < ActiveRecord::Base
  attr_accessible :name, :city, :state, :distance, :unit, :start_time, :notes
  
  has_many :race_partners
  has_many :charities, through: :race_partners
  has_many :organizations, through: :race_partners
  
end
