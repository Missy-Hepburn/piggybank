class Icon < ActiveRecord::Base
   
  has_attached_file :image, :styles => { :medium => "250x250#", :thumb => "100x100#" }
  validates_attachment_content_type :image, :content_type => /\Aimage\/.*\Z/ 
  
  has_many :transactions
  has_many :users, :through => :transactions 
  
end
