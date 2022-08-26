puts "Deleting ..."
Parent.destroy_all
Shelter.destroy_all
Pet.destroy_all

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

s1 = Shelter.create(name: "Denver Animal Rescue", image_url: "https://www.mnpower.com/Content/Images/Company/MPJournal/2017/12202017_01.jpg", location: "Denver, Colorado", 
    hours: "10AM-7PM", no_kill: true, shelter_id: 1)
    
s2 = Shelter.create(name: "Rocky Mountain Adoption Center", image_url: "https://www.jaynescorp.com/wp-content/uploads/2015/02/FRAS_JaynesCorp-12-1024x618.jpg", location: "Boulder, Colorado",
    hours: "8AM-5PM", no_kill: true, shelter_id: 2)
        
s3 = Shelter.create(name: "Southern California Animal Shelter", image_url: "https://www.sdhumane.org/assets/images/campus-buildings/el-cajon.jpg", location: "Los Angeles, California",
    hours: "9AM-6PM", no_kill: false, shelter_id: 3)

puts "seeding pets"
p1 = Pet.create(
shelter_id: s1.id, 
parent_id: p1.id, 
name: "Lucky", 
image_url: "https://images.dog.ceo/breeds/pitbull/20190710_143021.jpg", 
species: "dog", 
hunger: 5, 
thirst: 5, 
fun: 5, 
hygiene: 5, 
exhaustion: 5, 
temperament: "loving, mellow, unexcitable", 
recommendations: "no kids", 
adopt_status: "not started", 
medical: "skin rashes", 
age: 6, 
gender: "male", 
breed: "mutt", 
price: 120)

p2 = Pet.create(
shelter_id: s2.id, 
parent_id: p1.id, 
name: "Plucky", 
image_url: "https://images.dog.ceo/breeds/terrier-toy/n02087046_7214.jpg", 
species: "dog", 
hunger: 5, 
thirst: 5, 
fun: 5, 
hygiene: 5, 
exhaustion: 5, 
temperament: "friendly, easily excitable", 
recommendations: "a large yard", 
adopt_status: "started", 
medical: "n/a", 
age: 1, 
gender: "female", 
breed: "terrier-toy", 
price: 130)

p3 = Pet.create(
shelter_id: s3.id, 
parent_id: p2.id, 
name: "Puddles", 
image_url: "https://images.dog.ceo/breeds/affenpinscher/n02110627_4433.jpg", 
species: "dog", 
hunger: 3, 
thirst: 3, 
fun: 2, 
hygiene: 4, 
exhaustion: 7, 
temperament: "busy, inquisitive, bold, stubborn, playful, mischievous", 
recommendations: "not compatible with small pets", 
adopt_status: "started", 
medical: "n/a", 
age: 0, 
gender: "male", 
breed: "affenpinscher", 
price: 175)

p4 = Pet.create(
shelter_id: s3.id, 
parent_id: p3.id, 
name: "Sam", 
image_url: "https://images.dog.ceo/breeds/beagle/n02088364_13464.jpg", 
species: "dog", 
hunger: 6, 
thirst: 4, 
fun: 6, 
hygiene: 7, 
exhaustion: 3, 
temperament: "amiable, excellent with children, gentle, incredibly tolerant, and always ready to join in a game or adventure", 
recommendations: "a large yard", 
adopt_status: "not started", 
medical: "intervertebral disk disease", 
age: 8, 
gender: "male", 
breed: "beagle", 
price: 70)

p5 = Pet.create(
shelter_id: s3.id, 
parent_id: p4.id, 
name: "Mitsy", 
image_url: "https://images.dog.ceo/breeds/boxer/n02108089_15432.jpg", 
species: "dog", 
hunger: 5, 
thirst: 5, 
fun: 4, 
hygiene: 6, 
exhaustion: 8, 
temperament: "playful, exuberant, inquisitive, attentive, devoted", 
recommendations: "perfect companion for an active family", 
adopt_status: "not started", 
medical: "overheats", 
age: 2, 
gender: "female", 
breed: "boxer", 
price: 110)

p6 = Pet.create(
shelter_id: s2.id, 
parent_id: p4.id, 
name: "Master", 
image_url: "https://images.dog.ceo/breeds/dane-great/n02109047_6008.jpg", 
species: "dog", 
hunger: 3, 
thirst: 3, 
fun: 5, 
hygiene: 5, 
exhaustion: 6, 
temperament: "courageous, friendly, and dependable", 
recommendations: "room to sleep and stretch out", 
adopt_status: "not started", 
medical: "sensitive stomach", 
age: 3, 
gender: "male", 
breed: "great dane", 
price: 120)

p7 = Pet.create(
shelter_id: s2.id, 
parent_id: p5.id, 
name: "Butterscotch", 
image_url: "https://images.dog.ceo/breeds/vizsla/n02100583_7467.jpg", 
species: "dog", 
hunger: 4, 
thirst: 4, 
fun: 2, 
hygiene: 6, 
exhaustion: 8, 
temperament: "highly energetic, great hiking partners, adequate exercise", 
recommendations: "need adequate exercise", 
adopt_status: "started", 
medical: "n/a", 
age: 1, 
gender: "female", 
breed: "vizsla", 
price: 150)

p8 = Pet.create(
shelter_id: s1.id, 
parent_id: p6.id, 
name: "Cherry", 
image_url: "https://images.dog.ceo/breeds/mix/cherry.jpg", 
species: "dog", 
hunger: 5, 
thirst: 5, 
fun: 3, 
hygiene: 5, 
exhaustion: 7, 
temperament: "energetic, obedient, loyal", 
recommendations: "incompatible with cats", 
adopt_status: "not started", 
medical: "n/a", 
age: 2, 
gender: "female", 
breed: "mix", 
price: 100)

p9 = Pet.create(
shelter_id: s1.id, 
parent_id: p7.id, 
name: "Denver", 
image_url: "https://images.dog.ceo/breeds/mix/Denver.jpg", 
species: "dog", 
hunger: 4, 
thirst: 4, 
fun: 6, 
hygiene: 5, 
exhaustion: 6, 
temperament: "extremely calm, obedient, and friendly", 
recommendations: "laidback lifestyle", 
adopt_status: "not started", 
medical: "skin sensitivities (uses medicated shampoo)", 
age: 4, 
gender: "male", 
breed: "mix", 
price: 80)

p10 = Pet.create(
shelter_id: s3.id, 
parent_id: p7.id, 
name: "Penny", 
image_url: "https://images.dog.ceo/breeds/mix/penny.jpg", 
species: "dog", 
hunger: 6, 
thirst: 6, 
fun: 6, 
hygiene: 7, 
exhaustion: 5, 
temperament: "protective, steady, obedient", 
recommendations: "n/a", 
adopt_status: "not started", 
medical: "n/a", 
age: 3, 
gender: "female", 
breed: "mix", 
price: 100)

p11 = Pet.create(
shelter_id: s2.id, 
parent_id: p6.id, 
name: "Lilly", 
image_url: "https://images.dog.ceo/breeds/mix/lilypad2.jpg", 
species: "dog", 
hunger: 5, 
thirst: 5, 
fun: 5, 
hygiene: 5, 
exhaustion: 5, 
temperament: "energetic, eager, friendly ", 
recommendations: "loves other dogs, would do best with another dog", 
adopt_status: "started", 
medical: "n/a", 
age: 3, 
gender: "female", 
breed: "mix", 
price: 130)

p12 = Pet.create(
shelter_id: s2.id, 
parent_id: p5.id, 
name: "Dandelion", 
image_url: "https://thumbs.dreamstime.com/z/sphinx-2746293.jpg", 
species: "cat", 
hunger: 5, 
thirst: 5, 
fun: 8, 
hygiene: 8, 
exhaustion: 4, 
temperament: "loves her cheeks pet", 
recommendations: "one cat home", 
adopt_status: "not started", 
medical: "n/a", 
age: 2, 
gender: "female", 
breed: "tabby", 
price: 110)

p13 = Pet.create(
shelter_id: s3.id, 
parent_id: p4.id, 
name: "Redhot", 
image_url: "https://thumbs.dreamstime.com/z/red-cat-2405679.jpg", 
species: "cat", 
hunger: 6, 
thirst: 6, 
fun: 5, 
hygiene: 6, 
exhaustion: 5, 
temperament: "friendly, lapcat, lovable", 
recommendations: "does well with other cats", 
adopt_status: "not started", 
medical: "n/a", 
age: 1, 
gender: "male", 
breed: "orange tabby", 
price: 110)

p14 = Pet.create(
shelter_id: s1.id, 
parent_id: p3.id, 
name: "Smokey", 
image_url: "https://thumbs.dreamstime.com/z/kitten26-2107211.jpg", 
species: "cat", 
hunger: 5, 
thirst: 5, 
fun: 5, 
hygiene: 8, 
exhaustion: 7, 
temperament: "Mister Mellow, loves laps", 
recommendations: "indoor only, declawed", 
adopt_status: "started", 
medical: "n/a", 
age: 1, 
gender: "male", 
breed: "gray short-hair", 
price: 110)

p15 = Pet.create(
shelter_id: s3.id, 
parent_id: p2.id, 
name: "Igor", 
image_url: "https://thumbs.dreamstime.com/z/purebreed-cat-522788.jpg", 
species: "cat", 
hunger: 3, 
thirst: 4, 
fun: 5, 
hygiene: 6, 
exhaustion: 6, 
temperament: "independent, lovable, cuddly", 
recommendations: "an indoor cat tree or hammock", 
adopt_status: "not started", 
medical: "monthly insulin shots", 
age: 4, 
gender: "male", 
breed: "maine coon", 
price: 130)

p16 = Pet.create(
shelter_id: s2.id, 
parent_id: p4.id, 
name: "Turtle", 
image_url: "https://thumbs.dreamstime.com/z/tortoishell-cat-259955.jpg", 
species: "cat", 
hunger: 5, 
thirst: 5, 
fun: 6, 
hygiene: 8, 
exhaustion: 3, 
temperament: "a bit of a loner but very sweet", 
recommendations: "indoor only, declawed", 
adopt_status: "not started", 
medical: "n/a", 
age: 2, 
gender: "female", 
breed: "tortoishell", 
price: 110)

p17 = Pet.create(
shelter_id: s1.id, 
parent_id: p1.id, 
name: "Goldy", 
image_url: "https://thumbs.dreamstime.com/z/gold-fish-16044191.jpg", 
species: "fish", 
hunger: 7, 
thirst: 9, 
fun: 5, 
hygiene: 2, 
exhaustion: 4, 
temperament: "enjoys eye contact", 
recommendations: "a bowl of water", 
adopt_status: "not started", 
medical: "n/a", 
age: 1, 
gender: "female", 
breed: "goldfish", 
price: 15)

p18 = Pet.create(
shelter_id: s3.id, 
parent_id: p7.id, 
name: "Lady", 
image_url: "https://thumbs.dreamstime.com/z/beautiful-street-mama-2874005.jpg", 
species: "cat", 
hunger: 5, 
thirst: 5, 
fun: 6, 
hygiene: 8, 
exhaustion: 5, 
temperament: "a little stand-offish but loves a good scratching", 
recommendations: "a catio", 
adopt_status: "started", 
medical: "n/a", 
age: 3, 
gender: "female", 
breed: "tabby", 
price: 110)

p19 = Pet.create(
shelter_id: s3.id, 
parent_id: p6.id, 
name: "Flopsy", 
image_url: "https://thumbs.dreamstime.com/z/gray-fluffy-dwarf-rabbit-sits-white-background-isolated-72676077.jpg", 
species: "rabbit", 
hunger: 7, 
thirst: 7, 
fun: 4, 
hygiene: 4, 
exhaustion: 6, 
temperament: "enjoys being held", 
recommendations: "a indoor cage", 
adopt_status: "started", 
medical: "n/a", 
age: 0, 
gender: "male", 
breed: "grey", 
price: 70)

p20 = Pet.create(
shelter_id: s3.id, 
parent_id: p7.id, 
name: "Pezz", 
image_url: "https://thumbs.dreamstime.com/z/young-siamese-sable-ferret-kit-2525248.jpg", 
species: "ferret", 
hunger: 6, 
thirst: 6, 
fun: 9, 
hygiene: 2, 
exhaustion: 5, 
temperament: "extremely playful", 
recommendations: "a large cage with hammocks", 
adopt_status: "not started", 
medical: "n/a", 
age: 1, 
gender: "female", 
breed: "standard ferret", 
price: 110)

p21 = Pet.create(
shelter_id: s3.id, 
parent_id: p2.id, 
name: "Teddy", 
image_url: "https://thumbs.dreamstime.com/z/hamster-white-adorable-little-49786580.jpg", 
species: "hamster", 
hunger: 4, 
thirst: 6, 
fun: 6, 
hygiene: 3, 
exhaustion: 6, 
temperament: "keeps to himself but enjoys being held sometimes", 
recommendations: "weekly cage cleaning", 
adopt_status: "not started", 
medical: "n/a", 
age: 1, 
gender: "male", 
breed: "teddybear hamster", 
price: 20)

p22 = Pet.create(
shelter_id: s1.id, 
parent_id: p5.id, 
name: "Mr Twitch", 
image_url: "https://thumbs.dreamstime.com/z/guinea-pig-24519416.jpg", 
species: "guinea pig", 
hunger: 4, 
thirst: 5, 
fun: 7, 
hygiene: 3, 
exhaustion: 6, 
temperament: "loves to eat fresh bell peppers", 
recommendations: "weekly cage cleaning", 
adopt_status: "started", 
medical: "n/a", 
age: 1, 
gender: "female", 
breed: "tri-color", 
price: 30)

puts "✅ Done seeding!"
