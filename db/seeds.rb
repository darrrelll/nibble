
Group.destroy_all
User.destroy_all

x = "A"
4.times do
	group = Group.create([{name: Faker::Company.name}, 
					{section: x}
					])
	75.times do 
		user = User.create([{name: Faker::Name.name}, {gravatar_image_string: "this is a url"}])
	group.users << user
	end
	x.next
end
	
User.count/Group.count.times do 

	first_person = Group.find_by_section("A").users.shuffle.pop
	second_person = Group.find_by_section("B").users.shuffle.pop
	third_person = Group.find_by_section("C").users.shuffle.pop
	fourth_person = Group.find_by_section("D").users.shuffle.pop

binding.pry

	lunch = Lunch.create([{name: Faker::Company.name}, 
								{proposed_date: Date.now},
								{location: "UCLA"},
								{googe_map_link: "www.google.com/maps"}])

 lunch.users << first_person
 lunch.users << second_person
 lunch.users << third_person
 lunch.users << fourth_person

end



