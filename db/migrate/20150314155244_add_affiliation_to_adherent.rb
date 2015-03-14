class AddAffiliationToAdherent < ActiveRecord::Migration
  def change
    add_column :adherents, :affiliation, :integer
  end
end
