class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  #  :lockable, :timeoutable and :omniauthable 
  devise :confirmable, :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable 
  
 
  has_many :pictures  
  has_many :icons, :through => :transactions 
  has_many :budgets
  has_many :weeklyicons
  has_many :monthlyicons
  has_many :transactions
  
end
