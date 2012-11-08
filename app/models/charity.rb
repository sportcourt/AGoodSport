class Charity < ActiveRecord::Base
  attr_accessible :name
  
  has_many :race_partners
  has_many :races, through: :race_partners
  
end
