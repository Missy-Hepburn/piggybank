class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  

  has_many :pictures  
  has_many :icons
  has_many :budgets
  has_many :weeklyicons
  has_many :monthlyicons
  
end
