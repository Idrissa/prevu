class AddLogoToStructureSanitaire < ActiveRecord::Migration
  def self.up
    add_attachment :structure_sanitaires, :logo
  end

  def self.down
    remove_attachment :structure_sanitaires, :logo
  end
end
