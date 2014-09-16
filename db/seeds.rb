
Project.destroy_all
Ticket.destroy_all
10.times do
	Project.create([{ name: Faker::Lorem.word(1)}, 
					{ description: Faker::Lorem.sentences(1)}, 
					{ url: Faker::Company.logo },
					{ difficulty_rating: rand(1..5)},
					])
	2.times do 
	Ticket.create([ {type: 'User Story'}, 
					{description: Faker::Lorem.sentences(2)},
					{difficulty: rand(1..5)])
	end
	2.times do 
	Ticket.create([{type: 'Task'}, 
				   {description: Faker::Lorem.word(7)},
				   {difficulty: rand(1..5)}])
	end
end

