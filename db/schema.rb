# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2022_08_23_000559) do

  create_table "parents", force: :cascade do |t|
    t.string "image_url"
    t.string "name"
    t.integer "service_years"
    t.string "preferences"
    t.integer "budget"
    t.integer "hours_at_home"
    t.string "living_situation"
    t.integer "current_num_pets"
    t.boolean "pet_confiscation?"
    t.string "vet_provider"
    t.boolean "willing_6m_follow_up?"
    t.boolean "give_pet_back?"
    t.integer "donated_amt"
    t.boolean "reoccuring?"
    t.boolean "gift?"
    t.string "gift_in_honor_of"
  end

end
