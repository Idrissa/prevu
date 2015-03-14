class CreateJoinTableStructureSanitaireFormule < ActiveRecord::Migration
  def change
    create_join_table :structure_sanitaires, :formules do |t|
      t.index [:structure_sanitaire_id, :formule_id]
      # t.index [:formule_id, :structure_sanitaire_id]
    end
  end
end
