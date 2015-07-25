# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Administrator.first_or_create(email: 'virudson@gmail.com', password: '123456')

%w[Tokyo Nagoya Kyoto Nara Osaka].each do |name|
  Station.create(name: name)
end

%w[F U C K].each do |char|
  Shirt.create(name: "#{char} T-Shirt", price: 150..300)
end

%w[S U C K].each do |char|
  Pant.create(name: "#{char} Jean", price: 150..300)
end

%w[A S S].each do |char|
  Sock.create(name: "#{char} Sock", price: 150..300)
end



