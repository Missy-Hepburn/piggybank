class CreateIcons < ActiveRecord::Migration
  def change
    create_table :icons do |t|
      t.text :title
      t.float :price
      t.integer :user_id

      t.timestamps null: false
    end
  end
end
