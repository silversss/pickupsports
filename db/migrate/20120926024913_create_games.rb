class CreateGames < ActiveRecord::Migration
  def change
    create_table :games do |t|
      t.string :name
      t.string :address
      t.datetime :time
      t.string :status
      t.boolean :private
      t.string :sport
      t.float :latitude
      t.float :longitude
      t.boolean :gmaps
      t.string :member_id
      t.string :admin_id

      t.timestamps
    end
  end
end
