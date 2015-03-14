class CreateMicroAssurances < ActiveRecord::Migration
  def change
    create_table :micro_assurances do |t|

      t.timestamps null: false
    end
  end
end
