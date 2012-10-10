class CreateProfiles < ActiveRecord::Migration
  def change
    create_table :profiles do |t|
      t.string :address
      t.string :name
      t.string :user_name
      t.integer :user_id

      t.timestamps
    end
  end
end
