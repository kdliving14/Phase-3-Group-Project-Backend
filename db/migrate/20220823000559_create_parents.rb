class CreateParents < ActiveRecord::Migration[6.1]
  def change

    create_table :parents do |t|
      t.string :image_url
      t.string :name
      t.integer :service_years
      t.string :preferences
      t.integer :budget
      t.integer :hours_at_home
      t.string :living_situation
      t.integer :current_num_pets
      t.boolean :pet_confiscation?
      t.string :vet_provider
      t.boolean :willing_6m_follow_up?
      t.boolean :give_pet_back?
      t.integer :donated_amt
      t.boolean :reoccuring?
      t.boolean :gift?
      t.string :gift_in_honor_of
    end
  end
end
