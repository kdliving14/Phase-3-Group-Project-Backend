puts "Deleting ..."
Parent.destroy_all

puts "Deleting ..."
Shelter.destroy_all

puts "Deleting ..."
Pets.destroy_all

puts "🌱 Seeding spices..."

puts "seeding foster_parents"
5.times do

    Parent.create(
        image_url: Faker::LoremFlickr.image(size: "300x300", search_terms:['self']),
        name: Faker::Name.name,
        service_years: rand(0..10),
        preferences: "dogs",
        budget: rand(100..2000),
        hours_at_home: rand(1..40),
        living_situation: "House",
        current_num_pets: rand(0..5),
        pet_confiscation?: false,
        vet_provider: "Pets Best",
        willing_6m_follow_up?: true,
        give_pet_back?: false,
        donated_amt: rand(100..300),
        reoccuring?: true,
        gift?: true,
        gift_in_honor_of: "parent"
    )
end
5.times do

    Parent.create(
        image_url: Faker::LoremFlickr.image(size: "300x300", search_terms:['self']),
        name: Faker::Name.name,
        service_years: rand(0..10),
        preferences: "cats",
        budget: rand(100..2000),
        hours_at_home: rand(1..40),
        living_situation: "Apartment",
        current_num_pets: rand(0..5),
        pet_confiscation?: false,
        vet_provider: "Pets Best",
        willing_6m_follow_up?: true,
        give_pet_back?: false,
        donated_amt: rand(100..300),
        reoccuring?: true,
        gift?: true,
        gift_in_honor_of: "parent"
    )
end

s1 = Shelter.create(name: "Colorado Animal Rescue", image_url: "https://www.mnpower.com/Content/Images/Company/MPJournal/2017/12202017_01.jpg", location: "Denver, Colorado", 
    hours: "10-7", no_kill?: true, shelter_id: 1)
    
s2 = Shelter.create(name: "Rocky Mountain Adoption Center", image_url: "https://www.jaynescorp.com/project/farmington-animal-shelter/", location: "Boulder, Colorado",
    hours: "8-5", no_kill?: false, shelter_id: 2)
        
s3 = Shelter.create(name: "California Animal Shelter", image_url: "https://www.sdhumane.org/assets/images/campus-buildings/el-cajon.jpg", location: "Los Angeles, California",
    hours: "9-6", no_kill?: true, shelter_id: 3)

# Seed your database here
p1 = Pets.create(shelter_id: 1, parent_id: 1, name: "Lucky", image_url: "https://www.nationalgeographic.com/animals/mammals/facts/domestic-dog", species: "dog", hunger: 5, thirst: 5, fun: 5, hygiene: 5, exhaustion: 5, temperament: "cute", recommendations: "no kids", adopt_status: "not started", medical: "skin rashes", age: 6, gender: "Male", breed: "mutt", price: 120)
p2 = Pets.create(shelter_id: 2, parent_id: 2, name: "Plucky", image_url: "https://www.nationalgeographic.com/animals/mammals/facts/domestic-dog", species: "bird", hunger: 5, thirst: 5, fun: 5, hygiene: 5, exhaustion: 5, temperament: "cute", recommendations: "no kids", adopt_status: "not started", medical: "n/a", age: 1, gender: "Male", breed: "parakeet", price: 130)

puts "✅ Done seeding!"
