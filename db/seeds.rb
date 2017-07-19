Student.create(username: "Goose")

Mentor.create(username: "Joshuah")

Skill.create(name: "Awesomeness")

Mentor.first.availabilities.create(start_time: DateTime.now)

Availability.first.appoitments.create(student: Student.first, topic: Skill.first, mentor: Mentor.first)

# Appointments.first.feedbacks.create(rating: 5, body: "Shitty...")


