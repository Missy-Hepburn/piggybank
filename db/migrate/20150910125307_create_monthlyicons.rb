class CreateMonthlyicons < ActiveRecord::Migration
  def change
    create_table :monthlyicons do |t|
      t.integer :user_id
      t.float :monthly_expenses

      t.timestamps null: false
    end
  end
end
