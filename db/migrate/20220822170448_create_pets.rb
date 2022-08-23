class CreatePets < ActiveRecord::Migration[6.1]
  def change
    create_table :pets do |t|
      t.integer :shelter_id
      t.integer :foster_parent_id
      t.string :name
      t.string :image_url
      t.string :species
      t.integer :hunger
      t.integer :thirst
      t.integer :fun
      t.integer :hygiene
      t.integer :exhaustion
      t.string :temperament
      t.string :recommendations
      t.string :adopt_status
      t.string :medical
      t.integer :age
      t.string :gender
      t.string :breed
      t.integer :price
    end
  end
end
