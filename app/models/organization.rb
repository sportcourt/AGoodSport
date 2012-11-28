class Organization < ActiveRecord::Base
  attr_accessible :contact, :email, :name, :phone, :website
  
  has_many :race_partners
  has_many :races, through: :race_partners
  
end
