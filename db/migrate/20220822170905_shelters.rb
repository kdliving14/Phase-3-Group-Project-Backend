class Shelters < ActiveRecord::Migration[6.1]
  def change
    create_table :shelters do |t|
      t.string :name
      t.string :image_url
      t.string :location
      t.string :hours
      t.boolean :no_kill
      t.integer :shelter_id
    end
  end
end
