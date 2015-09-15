class AddWeeklyExpensesAndMonthlyExpensesAndDailyExpensesToBudgets < ActiveRecord::Migration
  def change
    add_column :budgets, :weekly_expenses, :float
    add_column :budgets, :monthly_expenses, :float
    add_column :budgets, :daily_expenses, :float
  end
end
