class CreateTransactions < ActiveRecord::Migration
  def change
    create_table :transactions do |t|
      t.references :user, index: true, foreign_key: true
      t.references :icon, index: true, foreign_key: true
      t.float :price

      t.timestamps null: false
    end
  end
end
