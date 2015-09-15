class CreateWeeklyicons < ActiveRecord::Migration
  def change
    create_table :weeklyicons do |t|
      t.integer :user_id
      t.float :weekly_expenses

      t.timestamps null: false
    end
  end
end
