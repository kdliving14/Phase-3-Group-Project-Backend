puts "🌱 Seeding spices..."

# Seed your database here
p1 = Pets.create(shelter_id: 1, foster_parent_id: 1, name: "Lucky", image_url: "https://www.nationalgeographic.com/animals/mammals/facts/domestic-dog", species: "dog", hunger: 5, thirst: 5, fun: 5, hygiene: 5, exhaustion: 5, temperament: "cute", recommendations: "no kids", adopt_status: "not started", medical: "skin rashes", age: 6, gender: "Male", breed: "mutt", price: 120)

puts "✅ Done seeding!"
