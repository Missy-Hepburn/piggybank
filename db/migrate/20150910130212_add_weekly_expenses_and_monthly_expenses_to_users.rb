class AddWeeklyExpensesAndMonthlyExpensesToUsers < ActiveRecord::Migration
  def change
    add_column :users, :weekly_expenses, :float
    add_column :users, :monthly_expenses, :float
  end
end
