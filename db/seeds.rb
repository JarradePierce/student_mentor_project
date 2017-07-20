Student.create(username: "Goose")

Mentor.create(username: "Joshuah")

Skill.create(name: "Awesomeness")

Skill.create(name: "Hummus eating")

# Mentor.first.availabilities.create(start_time: DateTime.now)

# Availability.first.appointments.create(student: Student.first, topic: Skill.first, mentor: Mentor.first)

# Appointments.first.feedbacks.create(rating: 5, body: "Shitty...")

Mentor.first.skills << Skill.first
Mentor.first.skills << Skill.second


