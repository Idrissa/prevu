class AddLogoToAssurance < ActiveRecord::Migration
  def self.up
    add_attachment :assurances, :logo
  end

  def self.down
    remove_attachment :assurances, :logo
  end
end
