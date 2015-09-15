class AddAttachmentImageToIcons < ActiveRecord::Migration
  def self.up
    change_table :icons do |t|
      t.attachment :image
    end
  end

  def self.down
    remove_attachment :icons, :image
  end
end
