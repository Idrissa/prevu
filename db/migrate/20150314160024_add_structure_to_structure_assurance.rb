class AddStructureToStructureAssurance < ActiveRecord::Migration
  def change
    add_column :structure_assurances, :structure_id, :integer
    add_column :structure_assurances, :structure_type, :string
  end
end
