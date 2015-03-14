class AddAttachmentAvatarToAdherents < ActiveRecord::Migration
  def self.up
    change_table :adherents do |t|
      t.attachment :avatar
    end
  end

  def self.down
    remove_attachment :adherents, :avatar
  end
end
