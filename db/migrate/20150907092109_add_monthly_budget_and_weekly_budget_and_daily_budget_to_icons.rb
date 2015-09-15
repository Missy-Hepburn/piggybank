class AddMonthlyBudgetAndWeeklyBudgetAndDailyBudgetToIcons < ActiveRecord::Migration
  def change
    add_column :icons, :monthly_budget, :integer
    add_column :icons, :weekly_budget, :integer
    add_column :icons, :daily_budget, :integer
  end
end
