class AddSexeToAdherent < ActiveRecord::Migration
  def change
    add_column :adherents, :sexe, :integer
  end
end
