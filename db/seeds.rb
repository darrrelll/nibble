
Group.destroy_all
User.destroy_all

x = 1

4.times do
	Group.create([{name: Faker::Name.name}, 
					{section: x}
					])
	75.times do 
		User.create([{name: Faker::Lorem.word(1)}])
	end
	x+=1
end




