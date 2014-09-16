
Group.destroy_all
User.destroy_all

x = 1
4.times do
	Groups.create([{name: Faker::Lorem.word(1)}, 
					{section: x}
					])
	75.times do 
	User.create([{name: Faker::Lorem.word(1)})
	end
	x+=1
end

