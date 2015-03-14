class CreateFormules < ActiveRecord::Migration
  def change
    create_table :formules do |t|
      t.references :structure_assurance, index: true
      t.string :nom, null: false
      t.integer :periode, null: false
      t.integer :occurrence_periode, default: 1, null: false
      t.float :montant_adhesion, null: false
      t.float :montant_cotisation, null: false

      t.timestamps null: false
    end
    add_foreign_key :formules, :structure_assurances
  end
end
