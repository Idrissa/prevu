class CreateFormules < ActiveRecord::Migration
  def change
    create_table :formules do |t|
      t.references :structure_assurance, index: true
      t.string :nom
      t.integer :periode
      t.integer :occurrence_periode, default: 1
      t.float :montant_adhesion
      t.float :montant_cotisation

      t.timestamps null: false
    end
    add_foreign_key :formules, :structure_assurances
  end
end
