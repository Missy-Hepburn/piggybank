class AddFirstNameAndSavingsAmountAndMonthlySavingsAndInterestRateToUsers < ActiveRecord::Migration
  def change
    add_column :users, :first_name, :string
    add_column :users, :savings_amount, :integer
    add_column :users, :monthly_savings, :integer
    add_column :users, :interest_rate, :integer
  end
end
