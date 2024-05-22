require 'faker'

CATEGORIES = ["chinese", "italian", "japanese", "french", "belgian"]
Restaurant.destroy_all
# Générer 5 restaurants avec des données aléatoires
5.times do
  restaurant = Restaurant.create!(
    name: Faker::Restaurant.name,
    address: Faker::Address.full_address,
    category: CATEGORIES.sample,
    phone_number: Faker::PhoneNumber.phone_number_with_country_code
  )
  puts "Restaurant #{restaurant.name} created!"
end
