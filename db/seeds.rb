puts "empty database"
Restaurant.destroy_all
puts "creating restaurants"

20.times do
  restaurant = Restaurant.create(
    name: Faker::Restaurant.name,
    address: Faker::Address.street_address,
    phone_number: Faker::PhoneNumber.cell_phone,
    category: %w[chinese italian japanese french belgian].sample
  )
  puts "restaurant id is #{restaurant.id}"
end
