class AddWeeklyBudgetAndDailyBudgetToBudgets < ActiveRecord::Migration
  def change
    add_column :budgets, :weekly_budget, :integer
    add_column :budgets, :daily_budget, :integer
  end
end
