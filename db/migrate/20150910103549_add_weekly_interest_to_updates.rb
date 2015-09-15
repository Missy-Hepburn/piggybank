class AddWeeklyInterestToUpdates < ActiveRecord::Migration
  def change
    add_column :updates, :weekly_interest, :float
  end
end
