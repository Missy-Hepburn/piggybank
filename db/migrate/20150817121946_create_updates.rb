class CreateUpdates < ActiveRecord::Migration
  def change
    create_table :updates do |t|
      t.string :first_name
      t.integer :user_id
      t.float :savings_amount
      t.float :monthly_savings
      t.float :interest_rate

      t.timestamps null: false
    end
  end
end
