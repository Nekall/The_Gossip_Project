User.destroy_all
City.destroy_all
Gossip.destroy_all
Tag.destroy_all

10.times do
  city = City.create([{cities: Faker::Address.city}])
end

10.times do
  User.create([{
  first_name: Faker::Name.first_name,
  last_name: Faker::Name.last_name,
  description: Faker::Books::CultureSeries.book,
  email: Faker::Internet.email,
  age: Faker::Number.between(from: 17, to: 58)
  }])
end

10.times do
  City.create([{
  name: Faker::Address.city,
  zip_code: Faker::Number.number(digits: 10)
  }])
end

20.times do
  Gossip.create([{
  title: Faker::Movies::StarWars.planet,
  content: Faker::Quote.yoda
  }])
end

10.times do
  Tag.create([{
  title: Faker::Movies::StarWars.droid
  }])
end
