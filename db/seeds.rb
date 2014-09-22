meetings = 52


Lunch.destroy_all
Group.destroy_all
User.destroy_all

x = "A"
5.times do
	group = Group.create([{name: Faker::Company.name}, 
					{section: x}])
	75.times do 
		user = User.create([{name: Faker::Name.name}, {gravatar_image_string: "this is a url"}])
		group.last.users.push(user)
	end
	x = x.next
end
	
User.count/Group.count.times do 

	first_person = Group.find_by_section("A").users.shuffle.pop
	second_person = Group.find_by_section("B").users.shuffle.pop
	third_person = Group.find_by_section("C").users.shuffle.pop
	fourth_person = Group.find_by_section("D").users.shuffle.pop
	fifth_person = Group.find_by_section("E").users.shuffle.pop

	lunch = Lunch.create([{name: Faker::Company.name}, 
								{proposed_date: Time.now},
								{location: "UCLA"},
								{google_map: "www"}])

	lunch.last.users << first_person
	lunch.last.users << second_person
	lunch.last.users << third_person
	lunch.last.users << fourth_person
	lunch.last.users << fifth_person

end

meetings = 30
loopsrun = 1

meetings.times do

	group_users = []

	group_users << Group.find_by_section("A").users
	group_users << Group.find_by_section("B").users
	group_users << Group.find_by_section("C").users
	group_users << Group.find_by_section("D").users
	group_users << Group.find_by_section("E").users

	first_person = group_users[0].shuffle.pop

	person_array = []
	person_array << first_person


	def unique_people(person_array, group_users)
		x = 0
		(group_users.count-1).times do 
			person_array[0].lunches.each do |lunch|
				lunch.users.each do |pastUser|
					user = group_users[x].shuffle!.first
					while pastUser.id == user.id
						user = group_users[x].shuffle!.first
					end
				end
				person_array << group_users[x].first.pop
			end
			x+=1
		end
	end

	unique_people(person_array, group_users)

	lunch = Lunch.create([{name: Faker::Company.name}, 
								{proposed_date: Time.now + (loopsrun*7*24*60*60)},
								{location: "UCLA"},
								{google_map: "www"}])
	p "*" * 50
	p person_array

	lunch.last.users << first_person
	lunch.last.users << person_array[0]
	lunch.last.users << person_array[1]
	lunch.last.users << person_array[2]
	lunch.last.users << person_array[3]

	loopsrun += 1
end











