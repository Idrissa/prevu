class CreateMutuelles < ActiveRecord::Migration
  def change
    create_table :mutuelles do |t|

      t.timestamps null: false
    end
  end
end
