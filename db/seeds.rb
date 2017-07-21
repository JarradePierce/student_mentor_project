Availability.delete_all
Student.delete_all
Mentor.delete_all
Skill.delete_all

# Student.create(username: "Goose", email: "123@123.com", password: "123", phase: 3)
# Student.create(username: "Yun", email: "123@123.com", password: "123", phase: 3)

# 5.times do
#   Skill.create(name: Faker::Educator.course)
# end


# @mentor1 = Mentor.create(username: "Joshuah", email: "123@123.com", password: "123", phase:3)
# @mentor2 = Mentor.create(username: "Erika", email: "123@123.com", password: "123", phase:3)


# Skill.create(name: "Hummus eating")

# # Mentor.first.availabilities.create(start_time: DateTime.now)

# # Availability.first.appointments.create(student: Student.first, topic: Skill.first, mentor: Mentor.first)

# 3.times do |time|
#   @mentor1.skills << Skill.all[time]
# end

# 2.times do |time|
#   @mentor2.skills << Skill.all[time+2]
# end

# Availability.create(mentor: @mentor1, start_time: DateTime.now)

# 3.times do
#   Availability.create(mentor: Mentor.first, start_time: Faker::Date.forward(rand(1..5)))
# end

# Availability.create(mentor: Mentor.all[rand(0..1)], start_time: 10.days.from_now)

# @app1 = Appointment.create(student: Student.first, mentor: Mentor.first, topic: Mentor.first.skills.first)

# @avail1 = Availability.create(mentor: Mentor.first, start_time: 10.days.ago, appointment: @app1)



