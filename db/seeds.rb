# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)




puts "Clearing old data..."
Driver.destroy_all
Passenger.destroy_all
Trip.destroy_all


puts 'creating admin-users'

terence =
  User.create(
    first_name: 'Terence',
    last_name: 'Stephens',
    phone_number: "333-333-3333",
    password_digest: BCrypt::Password.create('terence01'),
    admin: true,
    email: 'terence@gmail.com')







puts "Creating drivers..."

Driver.create(first_name: "Tisha", phone_number: "999-999-9999", ride_status: true, total_rides: 10, driver_id: 1)
Driver.create(first_name: "Mary", phone_number: "999-999-9999", ride_status: false, total_rides: 50, driver_id: 2)
Driver.create(first_name: "Roberta", phone_number: "999-999-9999", ride_status: true, total_rides: 30, driver_id: 3)
Driver.create(first_name: "Patricia", phone_number: "999-999-9999", ride_status: false, total_rides: 16, driver_id: 4)
Driver.create(first_name: "Heather", phone_number: "999-999-9999", ride_status: true, total_rides: 100, driver_id: 5)

puts "Creating Passengers..."
Passenger.create(first_name: "Elizabeth", phone_number: "999-999-9999", passenger_id: 1)
Passenger.create(first_name: "Megan", phone_number: "999-999-9999", passenger_id: 2)
Passenger.create(first_name: "Barbara", phone_number: "999-999-9999", passenger_id: 3)
Passenger.create(first_name: "Lisa", phone_number: "999-999-9999", passenger_id: 4)
Passenger.create(first_name: "Susan", phone_number: "999-999-9999", passenger_id: 5)



puts "Creating trips..."
Trip.create(passenger_id: 1, driver_id: 1, price: t['$15'], pick_up_logitude: -71.790633, pick_up_latitude: 42.251584, drop_off_longitude: -71.816802, drop_off_latitude: 42.248513)
Trip.create(passenger_id: 2, driver_id: 2, price: t['$13'], pick_up_logitude: -71.780074, pick_up_latitude: 42.255872, drop_off_longitude: -71.783981, drop_off_latitude: 42.259271)
Trip.create(passenger_id: 3, driver_id: 3, price: t['$18'], pick_up_logitude: -71.800892, pick_up_latitude: 42.26232, drop_off_longitude: -71.820848, drop_off_latitude: 42.269465)
Trip.create(passenger_id: 4, driver_id: 4, price: t['$30'], pick_up_logitude: -71.875352, pick_up_latitude: 42.279785, drop_off_longitude: -71.84677, drop_off_latitude: 42.27661)
Trip.create(passenger_id: 5, driver_id: 5, price: t['$20'], pick_up_logitude: -71.847409, pick_up_latitude: 42.286008, drop_off_longitude: -71.82024, drop_off_latitude: 42.291596)


puts "Done seeding with admin users, drivers, passengers!"