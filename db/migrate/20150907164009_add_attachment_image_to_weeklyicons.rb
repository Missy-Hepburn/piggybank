class AddAttachmentImageToWeeklyicons < ActiveRecord::Migration
  def self.up
    change_table :weeklyicons do |t|
      t.attachment :image
    end
  end

  def self.down
    remove_attachment :weeklyicons, :image
  end
end
