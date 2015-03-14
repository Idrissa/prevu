class RenameAssuranceToStructureAssurance < ActiveRecord::Migration
  def change
    rename_table :assurances, :structure_assurances
  end
end
