class AddPasswordSaltToAdherent < ActiveRecord::Migration
  def change
    add_column :adherents, :password_salt, :string
  end
end
