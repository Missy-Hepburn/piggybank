class CreateBudgets < ActiveRecord::Migration
  def change
    create_table :budgets do |t|
      t.string :savings_target
      t.float :monthly_savings
      t.float :monthly_budget
      t.integer :user_id

      t.timestamps null: false
    end
  end
end
