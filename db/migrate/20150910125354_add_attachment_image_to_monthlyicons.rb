class AddAttachmentImageToMonthlyicons < ActiveRecord::Migration
  def self.up
    change_table :monthlyicons do |t|
      t.attachment :image
    end
  end

  def self.down
    remove_attachment :monthlyicons, :image
  end
end
