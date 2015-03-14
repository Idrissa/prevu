class AddMatriculeToAdherent < ActiveRecord::Migration
  def change
    add_column :adherents, :matricule, :string
    add_index :adherents, :matricule, unique: true
  end
end
