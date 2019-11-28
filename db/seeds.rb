# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


# 10.times do
#   Garant.create(
#                     name: Faker::FunnyName.name, surname: Faker::Name.name
#                 )
# end

# 10.times do
#   Lecturer.create(
#       name: Faker::Name.female_first_name, surname: Faker::FunnyName.two_word_name, garant_id: rand(10) + 1
#   )

#end

# 10.times do
#   Executive.create(name: Faker::Name.masculine_name, surname: Faker::FunnyName.two_word_name)
# end

# 10.times do
#   Room.create(name: Faker::Games::HalfLife.location, address: Faker::Lorem.sentence,
#               room_type: Faker::Lorem.word, capacity: rand(50))
# end

# 10.times do
#   Equipment.create(room_id: rand(10) + 1, name: Faker::Games::ElderScrolls.creature, description: Faker::Lorem.sentence)
# end

# 10.times do
#   Course.create(name: Faker::Game.genre, description: Faker::TvShows::BojackHorseman.tongue_twister, course_type: "ayy", price: rand(999),
#                 garant_id: rand(10) + 1, executive_id: rand(10) + 1)
# end

# 10.times do
#   ExecRoom.create(executive_id: (rand(10) + 1), room_id: (rand(10) + 1))
# end

# 10.times do
#   Student.create(name: Faker::JapaneseMedia::OnePiece.character, surname: Faker::Name.name)
# end

# 10.times do
#   Term.create(room_id: rand(10) + 1, course_id: rand(10) + 1, lecturer_id: rand(10) + 1,
#               name: Faker::Demographic.race, description: Faker::TvShows::BojackHorseman.tongue_twister)
# end
#
# 10.times do
#   CourseRegistration.create(student_id: rand(10) + 1, garant_id: rand(10) + 1, course_id: rand(10) + 1,
#                             approved: true)
# end
#
# 10.times do
#   Timetable.create(student_id: rand(10) + 1, term_id: rand(10) + 1)
# end
#
# 10.times do
#   Score.create(student_id: rand(10) + 1, term_id: rand(10) + 1, lecturer_id: rand(10) + 1, points: rand(420))
# end