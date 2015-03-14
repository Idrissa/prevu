class CreateAssurances < ActiveRecord::Migration
  def change
    create_table :assurances do |t|
      t.string :nom
      t.string :adresse
      t.date :date_adhesion
      t.string :numero_agrement
      t.string :couleur
      t.boolean :actif, default: false

      t.timestamps null: false
    end
  end
end
