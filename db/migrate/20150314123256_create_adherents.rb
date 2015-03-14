class CreateAdherents < ActiveRecord::Migration
  def change
    create_table :adherents do |t|
      t.string :nom
      t.string :prenom
      t.integer :status_matrimonial
      t.date :date_de_naissance
      t.string :lieu_de_naissance
      t.text :adresse
      t.string :telephone1
      t.string :telephone2
      t.string :email
      t.string :username
      t.string :password_digest
      t.integer :status
      t.boolean :payer
      t.datetime :last_activation
      t.datetime :last_suspension
      t.datetime :last_delete
      t.datetime :paiement_date
      t.float :montant_cotisation

      t.timestamps null: false
    end
    add_index :adherents, :email, unique: true
    add_index :adherents, :username, unique: true
  end
end
