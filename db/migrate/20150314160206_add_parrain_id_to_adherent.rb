class AddParrainIdToAdherent < ActiveRecord::Migration
  def change
    add_column :adherents, :parrain_id, :integer
  end
end
