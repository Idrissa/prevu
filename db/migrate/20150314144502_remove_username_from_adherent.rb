class RemoveUsernameFromAdherent < ActiveRecord::Migration
  def change
    remove_column :adherents, :username, :string
  end
end
