class Transaction < ActiveRecord::Base
  belongs_to :user
  belongs_to :icon
end
