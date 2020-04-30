# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

10.times do 
    city= City.create(name_city:Faker::Address.city)
end 

10.times do 
    dog=Dog.create(name:Faker::Creature::Dog.name ,race:Faker::Games::Pokemon.name, city:City.all.sample)
end

10.times do 
    dogsitter=Dogsitter.create(first_name:Faker::Movies::HarryPotter.character , last_name:Faker::Movies::HarryPotter.house, city:City.all.sample)
end

10.times do 
    stroll=Stroll.create(date:Faker::Date.in_date_period(year: 2020, month: 5) ,dog: Dog.all.sample, dogsitter: Dogsitter.all.sample)
end

