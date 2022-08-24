puts "Deleting ..."
Parent.destroy_all
Shelter.destroy_all
Pet.destroy_all

puts "🌱 Seeding spices..."

puts "seeding foster_parents"
p1 = Parent.create(
    image_url: "https://images.unsplash.com/photo-1594283255808-ee728c775ba6?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8bWFuJTIwd2l0aCUyMGRvZ3xlbnwwfHwwfHw%3D&w=1000&q=80",
    name: "Andrew Collins", service_years: 5, preferences: "dogs", budget: 300, hours_at_home: 20, living_situation: "House", current_num_pets: 1, pet_confiscation: false,
    vet_provider: "Pets Best", willing_6m_follow_up: true, give_pet_back: false, donated_amt: 150, reoccuring: true, gift: true, gift_in_honor_of: "parent"
    )

p2 = Parent.create(
    image_url: "https://images.unsplash.com/photo-1579119134757-5c38803f34fc?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MXx8d29tYW4lMjBhbmQlMjBkb2d8ZW58MHx8MHx8&w=1000&q=80" ,
    name: "Claudina Octavia", service_years: 3, preferences: "dogs", budget: 150, hours_at_home: 10, living_situation: "Apartment", current_num_pets: 4, pet_confiscation: false,
    vet_provider: "Pets Best", willing_6m_follow_up: true, give_pet_back: false, donated_amt: 200, reoccuring: true, gift: true, gift_in_honor_of: "sister"
    )

p3 = Parent.create(
    image_url: "https://media.istockphoto.com/photos/arent-you-so-cute-picture-id522185081?b=1&k=20&m=522185081&s=170667a&w=0&h=AGrWqXyQqHqXnxjO2IRVR0J6GGCHz_o1fP_Ygu0EuJw=",
    name: "Scarlett Johnson", service_years: 2, preferences: "cats", budget: 200, hours_at_home: 30, living_situation: "House", current_num_pets: 1, pet_confiscation: false,
    vet_provider: "Pets Best", willing_6m_follow_up: true, give_pet_back: false, donated_amt: 0, reoccuring: true, gift: true, gift_in_honor_of: "mom"
    )

p4 = Parent.create(
    image_url: "https://media.istockphoto.com/photos/teen-with-two-kittens-picture-id919580498?b=1&k=20&m=919580498&s=170667a&w=0&h=btqQ8BLf8S6upgcm4rjlqCeNxlYNSv6vr14nd9fXYFA=",
    name: "Eva Burke", service_years: 1, preferences: "cats", budget: 500, hours_at_home: 80, living_situation: "Apartment", current_num_pets: 1, pet_confiscation: false,
    vet_provider: "Pets Best", willing_6m_follow_up: true, give_pet_back: false, donated_amt: 100, reoccuring: true, gift: true, gift_in_honor_of: "grandmother"
)

p5 = Parent.create(
    image_url: "https://images.unsplash.com/photo-1596981665119-3c67b0a2d6d2?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8NHx8bWFuJTIwd2l0aCUyMGNhdHxlbnwwfHwwfHw%3D&w=1000&q=80",
    name: "Matthew Shakespeare", service_years: 7, preferences: "cats", budget: 250, hours_at_home: 100, living_situation: "House", current_num_pets: 3, pet_confiscation: false,
    vet_provider: "Pets Best", willing_6m_follow_up: true, give_pet_back: false, donated_amt: 0, reoccuring: true, gift: true, gift_in_honor_of: "brother"
)
p6 = Parent.create(
    image_url: "https://images.unsplash.com/photo-1606229155208-1a5e7bfead60?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwcm9maWxlLXBhZ2V8NHx8fGVufDB8fHx8&w=1000&q=80",
    name: "Noah Oluwaseun", service_years: 3, preferences: "dogs", budget: 300, hours_at_home: 50, living_situation: "House", current_num_pets: 1, pet_confiscation: false,
    vet_provider: "Pets Best", willing_6m_follow_up: true, give_pet_back: false, donated_amt: 200, reoccuring: true, gift: true, gift_in_honor_of: "dad"
)
p7 = Parent.create(
    image_url: "https://media.istockphoto.com/photos/love-and-happiness-picture-id936898000?b=1&k=20&m=936898000&s=170667a&w=0&h=2U4ZX2LTiqoQvHOkPHSti8NRlINyyWePX2RfO8wTGNM=",
    name: "James Worthy", service_years: 6, preferences: "dogs", budget: 350, hours_at_home: 50, living_situation: "House", current_num_pets: 1, pet_confiscation: false,
    vet_provider: "Pets Best", willing_6m_follow_up: true, give_pet_back: false, donated_amt: 150, reoccuring: true, gift: true, gift_in_honor_of: "dad"
)

puts "seeding shelters"

s1 = Shelter.create(name: "Colorado Animal Rescue", image_url: "https://www.mnpower.com/Content/Images/Company/MPJournal/2017/12202017_01.jpg", location: "Denver, Colorado", 
    hours: "10-7", no_kill: true, shelter_id: 1)
    
s2 = Shelter.create(name: "Rocky Mountain Adoption Center", image_url: "https://www.jaynescorp.com/project/farmington-animal-shelter/", location: "Boulder, Colorado",
    hours: "8-5", no_kill: false, shelter_id: 2)
        
s3 = Shelter.create(name: "California Animal Shelter", image_url: "https://www.sdhumane.org/assets/images/campus-buildings/el-cajon.jpg", location: "Los Angeles, California",
    hours: "9-6", no_kill: true, shelter_id: 3)

puts "seeding pets"
p1 = Pet.create(shelter_id: s1.id, parent_id: p1.id, name: "Lucky", image_url: "https://www.nationalgeographic.com/animals/mammals/facts/domestic-dog", species: "dog", hunger: 5, thirst: 5, fun: 5, hygiene: 5, exhaustion: 5, temperament: "cute", recommendations: "no kids", adopt_status: "not started", medical: "skin rashes", age: 6, gender: "Male", breed: "mutt", price: 120)
p2 = Pet.create(shelter_id: s2.id, parent_id: p1.id, name: "Plucky", image_url: "https://www.nationalgeographic.com/animals/mammals/facts/domestic-dog", species: "bird", hunger: 5, thirst: 5, fun: 5, hygiene: 5, exhaustion: 5, temperament: "cute", recommendations: "no kids", adopt_status: "not started", medical: "n/a", age: 1, gender: "Male", breed: "parakeet", price: 130)

puts "✅ Done seeding!"
