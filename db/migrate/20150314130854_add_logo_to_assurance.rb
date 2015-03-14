class AddLogoToAssurance < ActiveRecord::Migration
  def self.up
    add_attachment :structure_assurances, :logo
  end

  def self.down
    remove_attachment :structure_assurances, :logo
  end
end
