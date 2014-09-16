
Project.destroy_all
Ticket.destroy_all

x=1
4.times do
	Groups.create([{name: Faker::Lorem.word(1)}, 
					{section: x}
					])
	75.times do 
	User.create([{name: Faker::Lorem.word(1)}, 
					{description: Faker::Lorem.sentences(2)},
					{difficulty: rand(1..5)])
	end
	x+=1
end

