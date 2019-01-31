require 'faker'

10.times do
	city = City.create!(name: Faker::Nation.capital_city)
end

30.times do
	dogsitter = Dogsitter.new(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name)
	dogsitter.city = City.all.sample
	dogsitter.save
end

30.times do
	dog = Dog.new(name: Faker::Pokemon.name)
	dog.city = City.all.sample
	dog.save
end

50.times do
	stroll = Stroll.new(date: Faker::Time.backward(14, :all))
	stroll.dogsitter = Dogsitter.all.sample
	stroll.dog = Dog.all.sample
	stroll.save
end
