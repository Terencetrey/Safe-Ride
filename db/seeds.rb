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
User.destroy_all


puts 'creating users'

terence =
  User.create(
    first_name: 'Terence',
    last_name: 'Stephens',
    gender: 'male',
    phone_number: "333 333 3333",
    password: ('terence01'),
    email: 'terence@gmail.com'
    
    
  )
tatiana =
  User.create(
    first_name: 'Tatiana',
    last_name: 'Buchannan',
    gender: 'female',
    phone_number: "222 222 2222",
    password: ('Tatiana01'),
    email: 'Tatiana@gmail.com'
    
    
  )
  elizabeth = User.create(first_name: "Elizabeth", last_name: "santos", gender: 'female', phone_number: "888 888 8888", password: ('Elizabeth01'), email: 'Elizabeth@gmail.com')
  megan = User.create(first_name: "Megan", last_name: "Fox", gender: 'female', phone_number: "444 444 4444", password: ('Megan01'), email: 'Megan@gmail.com')
  barbara = User.create(first_name: "Barbara", last_name: "Fox", gender: 'female', phone_number: "555 555 5555", password: ('Barbara01'), email: 'Barbara@gmail.com')
  lisa = User.create(first_name: "Lisa", last_name: "Ray", gender: 'female', phone_number: "666 666 6666", password: ('Lisa01'), email: 'Lisa@gmail.com')
  susan = User.create(first_name: "Susan", last_name: "B.Anthony", gender: 'female', phone_number: "777 777 7777", password: ('Susan01'), email: 'Susan@gmail.com')
  beyonce = User.create(first_name: "Beyonce", last_name: "YES Beyonce", gender: 'female', phone_number: "111 111 1111", password: ('Beyonce01'), email: 'Beyonce@gmail.com')
  rihana = User.create(first_name: "Rihana", last_name: "YES riri", gender: 'female', phone_number: "000 000 0000", password: ('Rihana01'), email: 'Rihana@gmail.com')
  michelle = User.create(first_name: "Michelle", last_name: "OBAMA", gender: 'female', phone_number: "000 010 0000", password: ('Michelle01'), email: 'Michelle@gmail.com')
  shykway = User.create(first_name: "Shykway", last_name: "Smith", gender: 'female', phone_number: "100 000 0001", password: ('Shykway01'), email: 'Shykway@gmail.com')
  shaniae = User.create(first_name: "Shaniae", last_name: "Stephens", gender: 'female', phone_number: "200 000 0002", password: ('Susan01'), email: 'Susan@gmail.com')

puts "Creating drivers..."







Driver.create(first_name: 'Terence', phone_number: "333-333-3333", ride_status: true,total_rides: 300, user_id: terence.id)
Driver.create(first_name: "Beyonce", phone_number: "111-111-1111", ride_status: true, total_rides: 32537, user_id: beyonce.id)
Driver.create(first_name: "Tatiana", phone_number: "222 222 2222", ride_status: true, total_rides: 325, user_id: tatiana.id)
Driver.create(first_name: "Shykway", phone_number: "100-000-0001", ride_status: true, total_rides: 257, user_id: shykway.id)
Driver.create(first_name: "Rihana", phone_number: "000-000-0000", ride_status: true, total_rides: 37, user_id: rihana.id)
Driver.create(first_name: "Michelle", phone_number: "000-010-0000", ride_status: true, total_rides: 33, user_id: michelle.id)
Driver.create(first_name: "Shaniae", phone_number: "200-000-0002", ride_status: true, total_rides: 7, user_id: shaniae.id)

Driver.create(first_name: "Susan", phone_number: "777-777-7777", ride_status: true, total_rides: 10, user_id: susan.id)
Driver.create(first_name: "Lisa", phone_number: "666-666-6666", ride_status: true, total_rides: 50, user_id: lisa.id)
Driver.create(first_name: "Barbara", phone_number: "555-555-5555", ride_status: true, total_rides: 30, user_id: barbara.id)
Driver.create(first_name: "Megan", phone_number: "444-444-4444", ride_status: true, total_rides: 16, user_id: megan.id)
Driver.create(first_name: "Elizabeth", phone_number: "888-888-8888", ride_status: true, total_rides: 100, user_id: elizabeth.id)

puts "Creating Passengers..."
Passenger.create(first_name: "Susan", phone_number: "777-777-7777", gender: "female", user_id: susan.id)
Passenger.create(first_name: "Lisa", phone_number: "666-666-6666", gender: "female", user_id: lisa.id)
Passenger.create(first_name: "Beyonce", phone_number: "111-111-1111", gender: "female", user_id: beyonce.id)
Passenger.create(first_name: "Shykway", phone_number: "100-000-0001", gender: "female", user_id: shykway.id)
Passenger.create(first_name: "Rihana", phone_number: "000-000-0000", gender: "female", user_id: rihana.id)
Passenger.create(first_name: "Michelle", phone_number: "000-010-0000", gender: "female", user_id: michelle.id)
Passenger.create(first_name: "Shaniae", phone_number: "200-000-0002", gender: "female", user_id: shaniae.id)

Passenger.create(first_name: 'Terence', phone_number: "333-333-3333", gender: "male", user_id: terence.id)
Passenger.create(first_name: "Barbara", phone_number: "555-555-5555", gender: "female", user_id: barbara.id)
Passenger.create(first_name: "Tatiana", phone_number: "222 222 2222", gender: "female", user_id: tatiana.id)
Passenger.create(first_name: "Megan", phone_number: "444-444-4444", gender: "female", user_id: megan.id)
Passenger.create(first_name: "Rihana", phone_number: "000-000-0000", gender: "female", user_id: rihana.id)




puts "Creating trips..."
Trip.create(passenger_id: beyonce.id, driver_id: susan.id, price: 15, pick_up_longitude:  71.790633, pick_up_latitude: 42.251584, drop_off_longitude:  71.816802, drop_off_latitude: 42.248513)
Trip.create(passenger_id: beyonce.id, driver_id: terence.id, price: 15, pick_up_longitude:  71.790633, pick_up_latitude: 42.251584, drop_off_longitude:  71.816802, drop_off_latitude: 42.248513)
Trip.create(passenger_id: beyonce.id, driver_id: tatiana.id, price: 15, pick_up_longitude:  71.790633, pick_up_latitude: 42.251584, drop_off_longitude:  71.816802, drop_off_latitude: 42.248513)
Trip.create(passenger_id: beyonce.id, driver_id: lisa.id, price: 15, pick_up_longitude:  71.790633, pick_up_latitude: 42.251584, drop_off_longitude:  71.816802, drop_off_latitude: 42.248513)
Trip.create(passenger_id: beyonce.id, driver_id: barbara.id, price: 15, pick_up_longitude:  71.790633, pick_up_latitude: 42.251584, drop_off_longitude:  71.816802, drop_off_latitude: 42.248513)
Trip.create(passenger_id: beyonce.id, driver_id: elizabeth.id, price: 15, pick_up_longitude:  71.790633, pick_up_latitude: 42.251584, drop_off_longitude:  71.816802, drop_off_latitude: 42.248513)
Trip.create(passenger_id: beyonce.id, driver_id: shykway.id, price: 15, pick_up_longitude:  71.790633, pick_up_latitude: 42.251584, drop_off_longitude:  71.816802, drop_off_latitude: 42.248513)
Trip.create(passenger_id: beyonce.id, driver_id: rihana.id, price: 15, pick_up_longitude:  71.790633, pick_up_latitude: 42.251584, drop_off_longitude:  71.816802, drop_off_latitude: 42.248513)
Trip.create(passenger_id: beyonce.id, driver_id: michelle.id, price: 15, pick_up_longitude:  71.790633, pick_up_latitude: 42.251584, drop_off_longitude:  71.816802, drop_off_latitude: 42.248513)
Trip.create(passenger_id: beyonce.id, driver_id: shaniae.id, price: 15, pick_up_longitude:  71.790633, pick_up_latitude: 42.251584, drop_off_longitude:  71.816802, drop_off_latitude: 42.248513)
Trip.create(passenger_id: beyonce.id, driver_id: megan.id, price: 15, pick_up_longitude:  71.790633, pick_up_latitude: 42.251584, drop_off_longitude:  71.816802, drop_off_latitude: 42.248513)

Trip.create(passenger_id: rihana.id, driver_id: susan.id, price: 18, pick_up_longitude:  71.800892, pick_up_latitude: 42.26232, drop_off_longitude:  71.820848, drop_off_latitude: 42.269465)
Trip.create(passenger_id: rihana.id, driver_id: terence.id, price: 18, pick_up_longitude:  71.800892, pick_up_latitude: 42.26232, drop_off_longitude:  71.820848, drop_off_latitude: 42.269465)
Trip.create(passenger_id: rihana.id, driver_id: tatiana.id, price: 18, pick_up_longitude:  71.800892, pick_up_latitude: 42.26232, drop_off_longitude:  71.820848, drop_off_latitude: 42.269465)
Trip.create(passenger_id: rihana.id, driver_id:    lisa.id, price: 18, pick_up_longitude:  71.800892, pick_up_latitude: 42.26232, drop_off_longitude:  71.820848, drop_off_latitude: 42.269465)
Trip.create(passenger_id: rihana.id, driver_id: barbara.id, price: 18, pick_up_longitude:  71.800892, pick_up_latitude: 42.26232, drop_off_longitude:  71.820848, drop_off_latitude: 42.269465)
Trip.create(passenger_id: rihana.id, driver_id: elizabeth.id, price: 18, pick_up_longitude:  71.800892, pick_up_latitude: 42.26232, drop_off_longitude:  71.820848, drop_off_latitude: 42.269465)
Trip.create(passenger_id: rihana.id, driver_id: shykway.id, price: 18, pick_up_longitude:  71.800892, pick_up_latitude: 42.26232, drop_off_longitude:  71.820848, drop_off_latitude: 42.269465)
Trip.create(passenger_id: rihana.id, driver_id: beyonce.id, price: 18, pick_up_longitude:  71.800892, pick_up_latitude: 42.26232, drop_off_longitude:  71.820848, drop_off_latitude: 42.269465)
Trip.create(passenger_id: rihana.id, driver_id: michelle.id, price: 18, pick_up_longitude:  71.800892, pick_up_latitude: 42.26232, drop_off_longitude:  71.820848, drop_off_latitude: 42.269465)
Trip.create(passenger_id: rihana.id, driver_id: shaniae.id, price: 18, pick_up_longitude:  71.800892, pick_up_latitude: 42.26232, drop_off_longitude:  71.820848, drop_off_latitude: 42.269465)
Trip.create(passenger_id: rihana.id, driver_id: megan.id, price: 18, pick_up_longitude:  71.800892, pick_up_latitude: 42.26232, drop_off_longitude:  71.820848, drop_off_latitude: 42.269465)

Trip.create(passenger_id: shykway.id, driver_id: susan.id, price: 13, pick_up_longitude:  71.780074, pick_up_latitude: 42.255872, drop_off_longitude:  71.783981, drop_off_latitude: 42.259271)
Trip.create(passenger_id: shykway.id, driver_id: terence.id, price: 13, pick_up_longitude:  71.780074, pick_up_latitude: 42.255872, drop_off_longitude:  71.783981, drop_off_latitude: 42.259271)
Trip.create(passenger_id: shykway.id, driver_id: tatiana.id, price: 13, pick_up_longitude:  71.780074, pick_up_latitude: 42.255872, drop_off_longitude:  71.783981, drop_off_latitude: 42.259271)
Trip.create(passenger_id: shykway.id, driver_id: lisa.id, price: 13, pick_up_longitude:  71.780074, pick_up_latitude: 42.255872, drop_off_longitude:  71.783981, drop_off_latitude: 42.259271)
Trip.create(passenger_id: shykway.id, driver_id: barbara.id, price: 13, pick_up_longitude:  71.780074, pick_up_latitude: 42.255872, drop_off_longitude:  71.783981, drop_off_latitude: 42.259271)
Trip.create(passenger_id: shykway.id, driver_id: elizabeth.id, price: 13, pick_up_longitude:  71.780074, pick_up_latitude: 42.255872, drop_off_longitude:  71.783981, drop_off_latitude: 42.259271)
Trip.create(passenger_id: shykway.id, driver_id: beyonce.id, price: 13, pick_up_longitude:  71.780074, pick_up_latitude: 42.255872, drop_off_longitude:  71.783981, drop_off_latitude: 42.259271)
Trip.create(passenger_id: shykway.id, driver_id: rihana.id, price: 13, pick_up_longitude:  71.780074, pick_up_latitude: 42.255872, drop_off_longitude:  71.783981, drop_off_latitude: 42.259271)
Trip.create(passenger_id: shykway.id, driver_id: michelle.id, price: 13, pick_up_longitude:  71.780074, pick_up_latitude: 42.255872, drop_off_longitude:  71.783981, drop_off_latitude: 42.259271)
Trip.create(passenger_id: shykway.id, driver_id: shaniae.id, price: 13, pick_up_longitude:  71.780074, pick_up_latitude: 42.255872, drop_off_longitude:  71.783981, drop_off_latitude: 42.259271)
Trip.create(passenger_id: shykway.id, driver_id: megan.id, price: 13, pick_up_longitude:  71.780074, pick_up_latitude: 42.255872, drop_off_longitude:  71.783981, drop_off_latitude: 42.259271)


Trip.create(passenger_id: michelle.id, driver_id: susan.id, price: 30, pick_up_longitude:  71.875352, pick_up_latitude: 42.279785, drop_off_longitude:  71.84677, drop_off_latitude: 42.27661)
Trip.create(passenger_id: michelle.id, driver_id: terence.id, price: 30, pick_up_longitude:  71.875352, pick_up_latitude: 42.279785, drop_off_longitude:  71.84677, drop_off_latitude: 42.27661)
Trip.create(passenger_id: michelle.id, driver_id: tatiana.id, price: 30, pick_up_longitude:  71.875352, pick_up_latitude: 42.279785, drop_off_longitude:  71.84677, drop_off_latitude: 42.27661)
Trip.create(passenger_id: michelle.id, driver_id: lisa.id, price: 30, pick_up_longitude:  71.875352, pick_up_latitude: 42.279785, drop_off_longitude:  71.84677, drop_off_latitude: 42.27661)
Trip.create(passenger_id: michelle.id, driver_id: barbara.id, price: 30, pick_up_longitude:  71.875352, pick_up_latitude: 42.279785, drop_off_longitude:  71.84677, drop_off_latitude: 42.27661)
Trip.create(passenger_id: michelle.id, driver_id: elizabeth.id, price: 30, pick_up_longitude:  71.875352, pick_up_latitude: 42.279785, drop_off_longitude:  71.84677, drop_off_latitude: 42.27661)
Trip.create(passenger_id: michelle.id, driver_id: shykway.id, price: 30, pick_up_longitude:  71.875352, pick_up_latitude: 42.279785, drop_off_longitude:  71.84677, drop_off_latitude: 42.27661)
Trip.create(passenger_id: michelle.id, driver_id: rihana.id, price: 30, pick_up_longitude:  71.875352, pick_up_latitude: 42.279785, drop_off_longitude:  71.84677, drop_off_latitude: 42.27661)
Trip.create(passenger_id: michelle.id, driver_id: beyonce.id, price: 30, pick_up_longitude:  71.875352, pick_up_latitude: 42.279785, drop_off_longitude:  71.84677, drop_off_latitude: 42.27661)
Trip.create(passenger_id: michelle.id, driver_id: shaniae.id, price: 30, pick_up_longitude:  71.875352, pick_up_latitude: 42.279785, drop_off_longitude:  71.84677, drop_off_latitude: 42.27661)
Trip.create(passenger_id: michelle.id, driver_id: michelle.id, price: 30, pick_up_longitude:  71.875352, pick_up_latitude: 42.279785, drop_off_longitude:  71.84677, drop_off_latitude: 42.27661)
Trip.create(passenger_id: michelle.id, driver_id: megan.id, price: 30, pick_up_longitude:  71.875352, pick_up_latitude: 42.279785, drop_off_longitude:  71.84677, drop_off_latitude: 42.27661)

Trip.create(passenger_id: shaniae.id, driver_id: susan.id, price: 20, pick_up_longitude:  71.847409, pick_up_latitude: 42.286008, drop_off_longitude:  71.82024, drop_off_latitude: 42.291596)
Trip.create(passenger_id: shaniae.id, driver_id: terence.id, price: 20, pick_up_longitude:  71.847409, pick_up_latitude: 42.286008, drop_off_longitude:  71.82024, drop_off_latitude: 42.291596)
Trip.create(passenger_id: shaniae.id, driver_id: tatiana.id, price: 20, pick_up_longitude:  71.847409, pick_up_latitude: 42.286008, drop_off_longitude:  71.82024, drop_off_latitude: 42.291596)
Trip.create(passenger_id: shaniae.id, driver_id: lisa.id, price: 20, pick_up_longitude:  71.847409, pick_up_latitude: 42.286008, drop_off_longitude:  71.82024, drop_off_latitude: 42.291596)
Trip.create(passenger_id: shaniae.id, driver_id: barbara.id, price: 20, pick_up_longitude:  71.847409, pick_up_latitude: 42.286008, drop_off_longitude:  71.82024, drop_off_latitude: 42.291596)
Trip.create(passenger_id: shaniae.id, driver_id: elizabeth.id, price: 20, pick_up_longitude:  71.847409, pick_up_latitude: 42.286008, drop_off_longitude:  71.82024, drop_off_latitude: 42.291596)
Trip.create(passenger_id: shaniae.id, driver_id: shykway.id, price: 20, pick_up_longitude:  71.847409, pick_up_latitude: 42.286008, drop_off_longitude:  71.82024, drop_off_latitude: 42.291596)
Trip.create(passenger_id: shaniae.id, driver_id: rihana.id, price: 20, pick_up_longitude:  71.847409, pick_up_latitude: 42.286008, drop_off_longitude:  71.82024, drop_off_latitude: 42.291596)
Trip.create(passenger_id: shaniae.id, driver_id: michelle.id, price: 20, pick_up_longitude:  71.847409, pick_up_latitude: 42.286008, drop_off_longitude:  71.82024, drop_off_latitude: 42.291596)
Trip.create(passenger_id: shaniae.id, driver_id: beyonce.id, price: 20, pick_up_longitude:  71.847409, pick_up_latitude: 42.286008, drop_off_longitude:  71.82024, drop_off_latitude: 42.291596)
Trip.create(passenger_id: shaniae.id, driver_id: megan.id, price: 20, pick_up_longitude:  71.847409, pick_up_latitude: 42.286008, drop_off_longitude:  71.82024, drop_off_latitude: 42.291596)

Trip.create(passenger_id: terence.id, driver_id: susan.id, price: 20, pick_up_longitude:  71.847409, pick_up_latitude: 42.286008, drop_off_longitude:  71.82024, drop_off_latitude: 42.291596)
Trip.create(passenger_id: terence.id, driver_id: megan.id, price: 20, pick_up_longitude:  71.847409, pick_up_latitude: 42.286008, drop_off_longitude:  71.82024, drop_off_latitude: 42.291596)
Trip.create(passenger_id: terence.id, driver_id: tatiana.id, price: 20, pick_up_longitude:  71.847409, pick_up_latitude: 42.286008, drop_off_longitude:  71.82024, drop_off_latitude: 42.291596)
Trip.create(passenger_id: terence.id, driver_id: lisa.id, price: 20, pick_up_longitude:  71.847409, pick_up_latitude: 42.286008, drop_off_longitude:  71.82024, drop_off_latitude: 42.291596)
Trip.create(passenger_id: terence.id, driver_id: barbara.id, price: 20, pick_up_longitude:  71.847409, pick_up_latitude: 42.286008, drop_off_longitude:  71.82024, drop_off_latitude: 42.291596)
Trip.create(passenger_id: terence.id, driver_id: elizabeth.id, price: 20, pick_up_longitude:  71.847409, pick_up_latitude: 42.286008, drop_off_longitude:  71.82024, drop_off_latitude: 42.291596)
Trip.create(passenger_id: terence.id, driver_id: shykway.id, price: 20, pick_up_longitude:  71.847409, pick_up_latitude: 42.286008, drop_off_longitude:  71.82024, drop_off_latitude: 42.291596)
Trip.create(passenger_id: terence.id, driver_id: rihana.id, price: 20, pick_up_longitude:  71.847409, pick_up_latitude: 42.286008, drop_off_longitude:  71.82024, drop_off_latitude: 42.291596)
Trip.create(passenger_id: terence.id, driver_id: michelle.id, price: 20, pick_up_longitude:  71.847409, pick_up_latitude: 42.286008, drop_off_longitude:  71.82024, drop_off_latitude: 42.291596)
Trip.create(passenger_id: terence.id, driver_id: shaniae.id, price: 20, pick_up_longitude:  71.847409, pick_up_latitude: 42.286008, drop_off_longitude:  71.82024, drop_off_latitude: 42.291596)
Trip.create(passenger_id: terence.id, driver_id: beyonce.id, price: 20, pick_up_longitude:  71.847409, pick_up_latitude: 42.286008, drop_off_longitude:  71.82024, drop_off_latitude: 42.291596)

Trip.create(passenger_id: tatiana.id, driver_id: susan.id, price: 30, pick_up_longitude:  71.875352, pick_up_latitude: 42.279785, drop_off_longitude:  71.84677, drop_off_latitude: 42.27661)
Trip.create(passenger_id: tatiana.id, driver_id: terence.id, price: 30, pick_up_longitude:  71.875352, pick_up_latitude: 42.279785, drop_off_longitude:  71.84677, drop_off_latitude: 42.27661)
Trip.create(passenger_id: tatiana.id, driver_id: megan.id, price: 30, pick_up_longitude:  71.875352, pick_up_latitude: 42.279785, drop_off_longitude:  71.84677, drop_off_latitude: 42.27661)
Trip.create(passenger_id: tatiana.id, driver_id: lisa.id, price: 30, pick_up_longitude:  71.875352, pick_up_latitude: 42.279785, drop_off_longitude:  71.84677, drop_off_latitude: 42.27661)
Trip.create(passenger_id: tatiana.id, driver_id: barbara.id, price: 30, pick_up_longitude:  71.875352, pick_up_latitude: 42.279785, drop_off_longitude:  71.84677, drop_off_latitude: 42.27661)
Trip.create(passenger_id: tatiana.id, driver_id: elizabeth.id, price: 30, pick_up_longitude:  71.875352, pick_up_latitude: 42.279785, drop_off_longitude:  71.84677, drop_off_latitude: 42.27661)
Trip.create(passenger_id: tatiana.id, driver_id: shykway.id, price: 30, pick_up_longitude:  71.875352, pick_up_latitude: 42.279785, drop_off_longitude:  71.84677, drop_off_latitude: 42.27661)
Trip.create(passenger_id: tatiana.id, driver_id: rihana.id, price: 30, pick_up_longitude:  71.875352, pick_up_latitude: 42.279785, drop_off_longitude:  71.84677, drop_off_latitude: 42.27661)
Trip.create(passenger_id: tatiana.id, driver_id: michelle.id, price: 30, pick_up_longitude:  71.875352, pick_up_latitude: 42.279785, drop_off_longitude:  71.84677, drop_off_latitude: 42.27661)
Trip.create(passenger_id: tatiana.id, driver_id: shaniae.id, price: 30, pick_up_longitude:  71.875352, pick_up_latitude: 42.279785, drop_off_longitude:  71.84677, drop_off_latitude: 42.27661)
Trip.create(passenger_id: tatiana.id, driver_id: beyonce.id, price: 30, pick_up_longitude:  71.875352, pick_up_latitude: 42.279785, drop_off_longitude:  71.84677, drop_off_latitude: 42.27661)



Trip.create(passenger_id: lisa.id, driver_id: susan.id, price: 13, pick_up_longitude:  71.780074, pick_up_latitude: 42.255872, drop_off_longitude:  71.783981, drop_off_latitude: 42.259271)
Trip.create(passenger_id: lisa.id, driver_id: terence.id, price: 13, pick_up_longitude:  71.780074, pick_up_latitude: 42.255872, drop_off_longitude:  71.783981, drop_off_latitude: 42.259271)
Trip.create(passenger_id: lisa.id, driver_id: tatiana.id, price: 13, pick_up_longitude:  71.780074, pick_up_latitude: 42.255872, drop_off_longitude:  71.783981, drop_off_latitude: 42.259271)
Trip.create(passenger_id: lisa.id, driver_id: barbara.id, price: 13, pick_up_longitude:  71.780074, pick_up_latitude: 42.255872, drop_off_longitude:  71.783981, drop_off_latitude: 42.259271)
Trip.create(passenger_id: lisa.id, driver_id: elizabeth.id, price: 13, pick_up_longitude:  71.780074, pick_up_latitude: 42.255872, drop_off_longitude:  71.783981, drop_off_latitude: 42.259271)
Trip.create(passenger_id: lisa.id, driver_id: shykway.id, price: 13, pick_up_longitude:  71.780074, pick_up_latitude: 42.255872, drop_off_longitude:  71.783981, drop_off_latitude: 42.259271)
Trip.create(passenger_id: lisa.id, driver_id: rihana.id, price: 13, pick_up_longitude:  71.780074, pick_up_latitude: 42.255872, drop_off_longitude:  71.783981, drop_off_latitude: 42.259271)
Trip.create(passenger_id: lisa.id, driver_id: michelle.id, price: 13, pick_up_longitude:  71.780074, pick_up_latitude: 42.255872, drop_off_longitude:  71.783981, drop_off_latitude: 42.259271)
Trip.create(passenger_id: lisa.id, driver_id: shaniae.id, price: 13, pick_up_longitude:  71.780074, pick_up_latitude: 42.255872, drop_off_longitude:  71.783981, drop_off_latitude: 42.259271)
Trip.create(passenger_id: lisa.id, driver_id: beyonce.id, price: 13, pick_up_longitude:  71.780074, pick_up_latitude: 42.255872, drop_off_longitude:  71.783981, drop_off_latitude: 42.259271)
Trip.create(passenger_id: lisa.id, driver_id: megan.id, price: 13, pick_up_longitude:  71.780074, pick_up_latitude: 42.255872, drop_off_longitude:  71.783981, drop_off_latitude: 42.259271)

Trip.create(passenger_id: susan.id, driver_id: terence.id, price: 18, pick_up_longitude:  71.800892, pick_up_latitude: 42.26232, drop_off_longitude:  71.820848, drop_off_latitude: 42.269465)
Trip.create(passenger_id: susan.id, driver_id: tatiana.id, price: 18, pick_up_longitude:  71.800892, pick_up_latitude: 42.26232, drop_off_longitude:  71.820848, drop_off_latitude: 42.269465)
Trip.create(passenger_id: susan.id, driver_id: lisa.id, price: 18, pick_up_longitude:  71.800892, pick_up_latitude: 42.26232, drop_off_longitude:  71.820848, drop_off_latitude: 42.269465)
Trip.create(passenger_id: susan.id, driver_id: barbara.id, price: 18, pick_up_longitude:  71.800892, pick_up_latitude: 42.26232, drop_off_longitude:  71.820848, drop_off_latitude: 42.269465)
Trip.create(passenger_id: susan.id, driver_id: elizabeth.id, price: 18, pick_up_longitude:  71.800892, pick_up_latitude: 42.26232, drop_off_longitude:  71.820848, drop_off_latitude: 42.269465)
Trip.create(passenger_id: susan.id, driver_id: shykway.id, price: 18, pick_up_longitude:  71.800892, pick_up_latitude: 42.26232, drop_off_longitude:  71.820848, drop_off_latitude: 42.269465)
Trip.create(passenger_id: susan.id, driver_id: rihana.id, price: 18, pick_up_longitude:  71.800892, pick_up_latitude: 42.26232, drop_off_longitude:  71.820848, drop_off_latitude: 42.269465)
Trip.create(passenger_id: susan.id, driver_id: michelle.id, price: 18, pick_up_longitude:  71.800892, pick_up_latitude: 42.26232, drop_off_longitude:  71.820848, drop_off_latitude: 42.269465)
Trip.create(passenger_id: susan.id, driver_id: shaniae.id, price: 18, pick_up_longitude:  71.800892, pick_up_latitude: 42.26232, drop_off_longitude:  71.820848, drop_off_latitude: 42.269465)
Trip.create(passenger_id: susan.id, driver_id: beyonce.id, price: 18, pick_up_longitude:  71.800892, pick_up_latitude: 42.26232, drop_off_longitude:  71.820848, drop_off_latitude: 42.269465)
Trip.create(passenger_id: susan.id, driver_id: megan.id, price: 18, pick_up_longitude:  71.800892, pick_up_latitude: 42.26232, drop_off_longitude:  71.820848, drop_off_latitude: 42.269465)

Trip.create(passenger_id: barbara.id, driver_id: susan.id, price: 15, pick_up_longitude:  71.790633, pick_up_latitude: 42.251584, drop_off_longitude:  71.816802, drop_off_latitude: 42.248513)
Trip.create(passenger_id: barbara.id, driver_id:terence.id, price: 15, pick_up_longitude:  71.790633, pick_up_latitude: 42.251584, drop_off_longitude:  71.816802, drop_off_latitude: 42.248513)
Trip.create(passenger_id: barbara.id, driver_id:tatiana.id, price: 15, pick_up_longitude:  71.790633, pick_up_latitude: 42.251584, drop_off_longitude:  71.816802, drop_off_latitude: 42.248513)
Trip.create(passenger_id: barbara.id, driver_id: lisa.id, price: 15, pick_up_longitude:  71.790633, pick_up_latitude: 42.251584, drop_off_longitude:  71.816802, drop_off_latitude: 42.248513)
Trip.create(passenger_id: barbara.id, driver_id: elizabeth.id, price: 15, pick_up_longitude:  71.790633, pick_up_latitude: 42.251584, drop_off_longitude:  71.816802, drop_off_latitude: 42.248513)
Trip.create(passenger_id: barbara.id, driver_id: shykway.id, price: 15, pick_up_longitude:  71.790633, pick_up_latitude: 42.251584, drop_off_longitude:  71.816802, drop_off_latitude: 42.248513)
Trip.create(passenger_id: barbara.id, driver_id: michelle.id, price: 15, pick_up_longitude:  71.790633, pick_up_latitude: 42.251584, drop_off_longitude:  71.816802, drop_off_latitude: 42.248513)
Trip.create(passenger_id: barbara.id, driver_id: shaniae.id, price: 15, pick_up_longitude:  71.790633, pick_up_latitude: 42.251584, drop_off_longitude:  71.816802, drop_off_latitude: 42.248513)
Trip.create(passenger_id: barbara.id, driver_id: beyonce.id, price: 15, pick_up_longitude:  71.790633, pick_up_latitude: 42.251584, drop_off_longitude:  71.816802, drop_off_latitude: 42.248513)
Trip.create(passenger_id: barbara.id, driver_id: megan.id, price: 15, pick_up_longitude:  71.790633, pick_up_latitude: 42.251584, drop_off_longitude:  71.816802, drop_off_latitude: 42.248513)
Trip.create(passenger_id: barbara.id, driver_id: rihana.id, price: 15, pick_up_longitude:  71.790633, pick_up_latitude: 42.251584, drop_off_longitude:  71.816802, drop_off_latitude: 42.248513)


Trip.create(passenger_id: megan.id, driver_id: susan.id, price: 30, pick_up_longitude:  71.875352, pick_up_latitude: 42.279785, drop_off_longitude:  71.84677, drop_off_latitude: 42.27661)
Trip.create(passenger_id: megan.id, driver_id: terence.id, price: 30, pick_up_longitude:  71.875352, pick_up_latitude: 42.279785, drop_off_longitude:  71.84677, drop_off_latitude: 42.27661)
Trip.create(passenger_id: megan.id, driver_id: tatiana.id, price: 30, pick_up_longitude:  71.875352, pick_up_latitude: 42.279785, drop_off_longitude:  71.84677, drop_off_latitude: 42.27661)
Trip.create(passenger_id: megan.id, driver_id: lisa.id, price: 30, pick_up_longitude:  71.875352, pick_up_latitude: 42.279785, drop_off_longitude:  71.84677, drop_off_latitude: 42.27661)
Trip.create(passenger_id: megan.id, driver_id: barbara.id, price: 30, pick_up_longitude:  71.875352, pick_up_latitude: 42.279785, drop_off_longitude:  71.84677, drop_off_latitude: 42.27661)
Trip.create(passenger_id: megan.id, driver_id: elizabeth.id, price: 30, pick_up_longitude:  71.875352, pick_up_latitude: 42.279785, drop_off_longitude:  71.84677, drop_off_latitude: 42.27661)
Trip.create(passenger_id: megan.id, driver_id: shykway.id, price: 30, pick_up_longitude:  71.875352, pick_up_latitude: 42.279785, drop_off_longitude:  71.84677, drop_off_latitude: 42.27661)
Trip.create(passenger_id: megan.id, driver_id: rihana.id, price: 30, pick_up_longitude:  71.875352, pick_up_latitude: 42.279785, drop_off_longitude:  71.84677, drop_off_latitude: 42.27661)
Trip.create(passenger_id: megan.id, driver_id: michelle.id, price: 30, pick_up_longitude:  71.875352, pick_up_latitude: 42.279785, drop_off_longitude:  71.84677, drop_off_latitude: 42.27661)
Trip.create(passenger_id: megan.id, driver_id: shaniae.id, price: 30, pick_up_longitude:  71.875352, pick_up_latitude: 42.279785, drop_off_longitude:  71.84677, drop_off_latitude: 42.27661)
Trip.create(passenger_id: megan.id, driver_id: beyonce.id, price: 30, pick_up_longitude:  71.875352, pick_up_latitude: 42.279785, drop_off_longitude:  71.84677, drop_off_latitude: 42.27661)



Trip.create(passenger_id: michelle.id, driver_id: susan.id, price: 18, pick_up_longitude:  71.800892, pick_up_latitude: 42.26232, drop_off_longitude:  71.820848, drop_off_latitude: 42.269465)
Trip.create(passenger_id: michelle.id, driver_id: terence.id, price: 18, pick_up_longitude:  71.800892, pick_up_latitude: 42.26232, drop_off_longitude:  71.820848, drop_off_latitude: 42.269465)
Trip.create(passenger_id: michelle.id, driver_id: tatiana.id, price: 18, pick_up_longitude:  71.800892, pick_up_latitude: 42.26232, drop_off_longitude:  71.820848, drop_off_latitude: 42.269465)
Trip.create(passenger_id: michelle.id, driver_id: lisa.id, price: 18, pick_up_longitude:  71.800892, pick_up_latitude: 42.26232, drop_off_longitude:  71.820848, drop_off_latitude: 42.269465)
Trip.create(passenger_id: michelle.id, driver_id: barbara.id, price: 18, pick_up_longitude:  71.800892, pick_up_latitude: 42.26232, drop_off_longitude:  71.820848, drop_off_latitude: 42.269465)
Trip.create(passenger_id: michelle.id, driver_id: elizabeth.id, price: 18, pick_up_longitude:  71.800892, pick_up_latitude: 42.26232, drop_off_longitude:  71.820848, drop_off_latitude: 42.269465)
Trip.create(passenger_id: michelle.id, driver_id: shykway.id, price: 18, pick_up_longitude:  71.800892, pick_up_latitude: 42.26232, drop_off_longitude:  71.820848, drop_off_latitude: 42.269465)
Trip.create(passenger_id: michelle.id, driver_id: rihana.id, price: 18, pick_up_longitude:  71.800892, pick_up_latitude: 42.26232, drop_off_longitude:  71.820848, drop_off_latitude: 42.269465)
Trip.create(passenger_id: michelle.id, driver_id: shaniae.id, price: 18, pick_up_longitude:  71.800892, pick_up_latitude: 42.26232, drop_off_longitude:  71.820848, drop_off_latitude: 42.269465)
Trip.create(passenger_id: michelle.id, driver_id: beyonce.id, price: 18, pick_up_longitude:  71.800892, pick_up_latitude: 42.26232, drop_off_longitude:  71.820848, drop_off_latitude: 42.269465)
Trip.create(passenger_id: michelle.id, driver_id: megan.id, price: 18, pick_up_longitude:  71.800892, pick_up_latitude: 42.26232, drop_off_longitude:  71.820848, drop_off_latitude: 42.269465)








puts "Done seeding with admin users, drivers, passengers!"