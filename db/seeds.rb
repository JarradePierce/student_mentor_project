Student.create(username: "Goose", email: "123@123.com", password: "123")
Student.create(username: "Yun", email: "123@123.com", password: "123")

5.times do 
  Skill.create(name: Faker::Educator.course)
end

@mentor1 = Mentor.create(username: "Joshuah", email: "123@123.com", password: "123")
@mentor2 = Mentor.create(username: "Erika", email: "123@123.com", password: "123")

2.times do |time|
  @mentor1.skills << Skill.all[time]
end


2.times do |time|
  @mentor2.skills << Skill.all[time+2]
end





3.times do 
  Availability.create(mentor: Mentor.all[rand(0..1)], start_time: Faker::Date.forward(rand(1..5)))
end

