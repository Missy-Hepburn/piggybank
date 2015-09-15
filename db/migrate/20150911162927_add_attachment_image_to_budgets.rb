class AddAttachmentImageToBudgets < ActiveRecord::Migration
  def self.up
    change_table :budgets do |t|
      t.attachment :image
    end
  end

  def self.down
    remove_attachment :budgets, :image
  end
end
