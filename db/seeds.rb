Student.create(username: "Goose", email: "123@123.com", password: "123")
Student.create(username: "Yun", email: "123@123.com", password: "123")

Mentor.create(username: "Joshuah", email: "123@123.com", password: "123")
Mentor.create(username: "Erika", email: "123@123.com", password: "123")


5.times do 
  Skill.create(name: Faker::Educator.course)
end

3.times do 
  Availability.create(mentor: Mentor.all[rand(0..1)], start_time: Faker::Date.forward(rand(1..5))
 ))
end




Mentor.first.availabilities.create(start_time: DateTime.now)

Availability.first.appoitments.create(student: Student.first, topic: Skill.first, mentor: Mentor.first)

# Appointments.first.feedbacks.create(rating: 5, body: "Shitty...")


