class Charity < ActiveRecord::Base
  attr_accessible :contact, :email, :name, :phone, :website, :image
  
  has_many :race_partners
  has_many :races, through: :race_partners
  mount_uploader :image, ImageUploader
  
end
