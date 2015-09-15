class Picture < ActiveRecord::Base
  
  has_attached_file :image, :styles => { :medium => "250x250#", :thumb => "100x100#" },
  :default_url => "/images/:style/missingimage.png"
  validates_attachment_content_type :image, :content_type => /\Aimage\/.*\Z/ 
  
  belongs_to :user
  
end
