class CreateStructureSanitaires < ActiveRecord::Migration
  def change
    create_table :structure_sanitaires do |t|
      t.string :nom, null: false
      t.string :adresse
      t.date :date_adhesion
      t.boolean :actif, default: false
      t.references :structure, polymorphic: true, index: true

      t.timestamps null: false
    end
  end
end
