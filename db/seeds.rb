# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
user1 = User.create!(name: 'Teacher1', email: 'teacher1@mail.com', password: '@dmin123', password_confirmation: '@dmin123' )
user2 = User.create!(name: 'Teacher2', email: 'teacher2@mail.com', password: '@dmin123', password_confirmation: '@dmin123' )

# Logged information for user1 and user2
# 2019-09-09
ClockEvent.create!(user_id: user1.id, event_time: Time.new(2019,9,9,8,0,0), type_evt: :clock_in)
ClockEvent.create!(user_id: user1.id, event_time: Time.new(2019,9,9,10,0,0), type_evt: :clock_out)
ClockEvent.create!(user_id: user1.id, event_time: Time.new(2019,9,9,10,15,0), type_evt: :clock_in)
ClockEvent.create!(user_id: user1.id, event_time: Time.new(2019,9,9,12,0,0), type_evt: :clock_out)
ClockEvent.create!(user_id: user1.id, event_time: Time.new(2019,9,9,13,0,0), type_evt: :clock_in)
ClockEvent.create!(user_id: user1.id, event_time: Time.new(2019,9,9,18,0,0), type_evt: :clock_out)

ClockEvent.create!(user_id: user2.id, event_time: Time.new(2019,9,9,8,0,0), type_evt: :clock_in)
ClockEvent.create!(user_id: user2.id, event_time: Time.new(2019,9,9,10,0,0), type_evt: :clock_out)
ClockEvent.create!(user_id: user2.id, event_time: Time.new(2019,9,9,10,15,0), type_evt: :clock_in)
ClockEvent.create!(user_id: user2.id, event_time: Time.new(2019,9,9,12,0,0), type_evt: :clock_out)
ClockEvent.create!(user_id: user2.id, event_time: Time.new(2019,9,9,13,0,0), type_evt: :clock_in)
ClockEvent.create!(user_id: user2.id, event_time: Time.new(2019,9,9,18,0,0), type_evt: :clock_out)
# 2019-09-10
ClockEvent.create!(user_id: user1.id, event_time: Time.new(2019,9,10,8,0,0), type_evt: :clock_in)
ClockEvent.create!(user_id: user1.id, event_time: Time.new(2019,9,10,12,0,0), type_evt: :clock_out)
ClockEvent.create!(user_id: user1.id, event_time: Time.new(2019,9,10,13,0,0), type_evt: :clock_in)
ClockEvent.create!(user_id: user1.id, event_time: Time.new(2019,9,10,18,0,0), type_evt: :clock_out)

ClockEvent.create!(user_id: user2.id, event_time: Time.new(2019,9,10,8,0,0), type_evt: :clock_in)
ClockEvent.create!(user_id: user2.id, event_time: Time.new(2019,9,10,12,0,0), type_evt: :clock_out)
ClockEvent.create!(user_id: user2.id, event_time: Time.new(2019,9,10,13,0,0), type_evt: :clock_in)
ClockEvent.create!(user_id: user2.id, event_time: Time.new(2019,9,10,18,0,0), type_evt: :clock_out)
# 2019-09-11
ClockEvent.create!(user_id: user1.id, event_time: Time.new(2019,9,11,8,0,0), type_evt: :clock_in)
ClockEvent.create!(user_id: user1.id, event_time: Time.new(2019,9,11,12,0,0), type_evt: :clock_out)
ClockEvent.create!(user_id: user1.id, event_time: Time.new(2019,9,11,13,0,0), type_evt: :clock_in)
ClockEvent.create!(user_id: user1.id, event_time: Time.new(2019,9,11,18,0,0), type_evt: :clock_out)

ClockEvent.create!(user_id: user2.id, event_time: Time.new(2019,9,11,8,0,0), type_evt: :clock_in)
ClockEvent.create!(user_id: user2.id, event_time: Time.new(2019,9,11,12,0,0), type_evt: :clock_out)
ClockEvent.create!(user_id: user2.id, event_time: Time.new(2019,9,11,13,0,0), type_evt: :clock_in)
ClockEvent.create!(user_id: user2.id, event_time: Time.new(2019,9,11,18,0,0), type_evt: :clock_out)
# 2019-09-12
ClockEvent.create!(user_id: user1.id, event_time: Time.new(2019,9,12,8,0,0), type_evt: :clock_in)
ClockEvent.create!(user_id: user1.id, event_time: Time.new(2019,9,12,12,0,0), type_evt: :clock_out)
ClockEvent.create!(user_id: user1.id, event_time: Time.new(2019,9,12,13,0,0), type_evt: :clock_in)
ClockEvent.create!(user_id: user1.id, event_time: Time.new(2019,9,12,18,0,0), type_evt: :clock_out)

ClockEvent.create!(user_id: user2.id, event_time: Time.new(2019,9,12,8,0,0), type_evt: :clock_in)
ClockEvent.create!(user_id: user2.id, event_time: Time.new(2019,9,12,12,0,0), type_evt: :clock_out)
ClockEvent.create!(user_id: user2.id, event_time: Time.new(2019,9,12,13,0,0), type_evt: :clock_in)
ClockEvent.create!(user_id: user2.id, event_time: Time.new(2019,9,12,18,0,0), type_evt: :clock_out)
# 2019-09-13
ClockEvent.create!(user_id: user1.id, event_time: Time.new(2019,9,13,8,0,0), type_evt: :clock_in)
ClockEvent.create!(user_id: user1.id, event_time: Time.new(2019,9,13,12,0,0), type_evt: :clock_out)
ClockEvent.create!(user_id: user1.id, event_time: Time.new(2019,9,13,13,0,0), type_evt: :clock_in)
ClockEvent.create!(user_id: user1.id, event_time: Time.new(2019,9,13,18,0,0), type_evt: :clock_out)

ClockEvent.create!(user_id: user2.id, event_time: Time.new(2019,9,13,8,0,0), type_evt: :clock_in)
ClockEvent.create!(user_id: user2.id, event_time: Time.new(2019,9,13,12,0,0), type_evt: :clock_out)
ClockEvent.create!(user_id: user2.id, event_time: Time.new(2019,9,13,13,0,0), type_evt: :clock_in)
ClockEvent.create!(user_id: user2.id, event_time: Time.new(2019,9,13,18,0,0), type_evt: :clock_out)
# 2019-09-16
ClockEvent.create!(user_id: user1.id, event_time: Time.new(2019,9,16,8,0,0), type_evt: :clock_in)
ClockEvent.create!(user_id: user1.id, event_time: Time.new(2019,9,16,12,0,0), type_evt: :clock_out)
ClockEvent.create!(user_id: user1.id, event_time: Time.new(2019,9,16,13,0,0), type_evt: :clock_in)
ClockEvent.create!(user_id: user1.id, event_time: Time.new(2019,9,16,18,0,0), type_evt: :clock_out)

ClockEvent.create!(user_id: user2.id, event_time: Time.new(2019,9,16,8,0,0), type_evt: :clock_in)
ClockEvent.create!(user_id: user2.id, event_time: Time.new(2019,9,16,12,0,0), type_evt: :clock_out)
ClockEvent.create!(user_id: user2.id, event_time: Time.new(2019,9,16,13,0,0), type_evt: :clock_in)
ClockEvent.create!(user_id: user2.id, event_time: Time.new(2019,9,16,18,0,0), type_evt: :clock_out)
# 2019-09-17
ClockEvent.create!(user_id: user1.id, event_time: Time.new(2019,9,17,8,0,0), type_evt: :clock_in)
ClockEvent.create!(user_id: user1.id, event_time: Time.new(2019,9,17,12,0,0), type_evt: :clock_out)
ClockEvent.create!(user_id: user1.id, event_time: Time.new(2019,9,17,13,0,0), type_evt: :clock_in)
ClockEvent.create!(user_id: user1.id, event_time: Time.new(2019,9,17,18,0,0), type_evt: :clock_out)

ClockEvent.create!(user_id: user2.id, event_time: Time.new(2019,9,17,8,0,0), type_evt: :clock_in)
ClockEvent.create!(user_id: user2.id, event_time: Time.new(2019,9,17,12,0,0), type_evt: :clock_out)
ClockEvent.create!(user_id: user2.id, event_time: Time.new(2019,9,17,13,0,0), type_evt: :clock_in)
ClockEvent.create!(user_id: user2.id, event_time: Time.new(2019,9,17,18,0,0), type_evt: :clock_out)
# 2019-09-18
ClockEvent.create!(user_id: user1.id, event_time: Time.new(2019,9,18,8,0,0), type_evt: :clock_in)
ClockEvent.create!(user_id: user1.id, event_time: Time.new(2019,9,18,12,0,0), type_evt: :clock_out)
ClockEvent.create!(user_id: user1.id, event_time: Time.new(2019,9,18,13,0,0), type_evt: :clock_in)
ClockEvent.create!(user_id: user1.id, event_time: Time.new(2019,9,18,18,0,0), type_evt: :clock_out)

ClockEvent.create!(user_id: user2.id, event_time: Time.new(2019,9,18,8,0,0), type_evt: :clock_in)
ClockEvent.create!(user_id: user2.id, event_time: Time.new(2019,9,18,12,0,0), type_evt: :clock_out)
ClockEvent.create!(user_id: user2.id, event_time: Time.new(2019,9,18,13,0,0), type_evt: :clock_in)
ClockEvent.create!(user_id: user2.id, event_time: Time.new(2019,9,18,18,0,0), type_evt: :clock_out)
# 2019-09-19
ClockEvent.create!(user_id: user1.id, event_time: Time.new(2019,9,19,8,0,0), type_evt: :clock_in)
ClockEvent.create!(user_id: user1.id, event_time: Time.new(2019,9,19,12,0,0), type_evt: :clock_out)
ClockEvent.create!(user_id: user1.id, event_time: Time.new(2019,9,19,13,0,0), type_evt: :clock_in)
ClockEvent.create!(user_id: user1.id, event_time: Time.new(2019,9,19,18,0,0), type_evt: :clock_out)

ClockEvent.create!(user_id: user2.id, event_time: Time.new(2019,9,19,8,0,0), type_evt: :clock_in)
ClockEvent.create!(user_id: user2.id, event_time: Time.new(2019,9,19,12,0,0), type_evt: :clock_out)
ClockEvent.create!(user_id: user2.id, event_time: Time.new(2019,9,19,13,0,0), type_evt: :clock_in)
ClockEvent.create!(user_id: user2.id, event_time: Time.new(2019,9,19,18,0,0), type_evt: :clock_out)
# 2019-09-20
ClockEvent.create!(user_id: user1.id, event_time: Time.new(2019,9,20,8,0,0), type_evt: :clock_in)
ClockEvent.create!(user_id: user1.id, event_time: Time.new(2019,9,20,12,0,0), type_evt: :clock_out)
ClockEvent.create!(user_id: user1.id, event_time: Time.new(2019,9,20,13,0,0), type_evt: :clock_in)
ClockEvent.create!(user_id: user1.id, event_time: Time.new(2019,9,20,18,0,0), type_evt: :clock_out)

ClockEvent.create!(user_id: user2.id, event_time: Time.new(2019,9,20,8,0,0), type_evt: :clock_in)
ClockEvent.create!(user_id: user2.id, event_time: Time.new(2019,9,20,12,0,0), type_evt: :clock_out)
ClockEvent.create!(user_id: user2.id, event_time: Time.new(2019,9,20,13,0,0), type_evt: :clock_in)
ClockEvent.create!(user_id: user2.id, event_time: Time.new(2019,9,20,18,0,0), type_evt: :clock_out)
# 2019-09-23
ClockEvent.create!(user_id: user1.id, event_time: Time.new(2019,9,23,8,0,0), type_evt: :clock_in)
ClockEvent.create!(user_id: user1.id, event_time: Time.new(2019,9,23,12,0,0), type_evt: :clock_out)
ClockEvent.create!(user_id: user1.id, event_time: Time.new(2019,9,23,13,0,0), type_evt: :clock_in)
ClockEvent.create!(user_id: user1.id, event_time: Time.new(2019,9,23,18,0,0), type_evt: :clock_out)

ClockEvent.create!(user_id: user2.id, event_time: Time.new(2019,9,23,8,0,0), type_evt: :clock_in)
ClockEvent.create!(user_id: user2.id, event_time: Time.new(2019,9,23,12,0,0), type_evt: :clock_out)
ClockEvent.create!(user_id: user2.id, event_time: Time.new(2019,9,23,13,0,0), type_evt: :clock_in)
ClockEvent.create!(user_id: user2.id, event_time: Time.new(2019,9,23,18,0,0), type_evt: :clock_out)
# 2019-09-24
ClockEvent.create!(user_id: user1.id, event_time: Time.new(2019,9,24,8,0,0), type_evt: :clock_in)
ClockEvent.create!(user_id: user1.id, event_time: Time.new(2019,9,24,12,0,0), type_evt: :clock_out)
ClockEvent.create!(user_id: user1.id, event_time: Time.new(2019,9,24,13,0,0), type_evt: :clock_in)
ClockEvent.create!(user_id: user1.id, event_time: Time.new(2019,9,24,18,0,0), type_evt: :clock_out)

ClockEvent.create!(user_id: user2.id, event_time: Time.new(2019,9,24,8,0,0), type_evt: :clock_in)
ClockEvent.create!(user_id: user2.id, event_time: Time.new(2019,9,24,12,0,0), type_evt: :clock_out)
ClockEvent.create!(user_id: user2.id, event_time: Time.new(2019,9,24,13,0,0), type_evt: :clock_in)
ClockEvent.create!(user_id: user2.id, event_time: Time.new(2019,9,24,18,0,0), type_evt: :clock_out)
# 2019-09-25
ClockEvent.create!(user_id: user1.id, event_time: Time.new(2019,9,25,8,0,0), type_evt: :clock_in)
ClockEvent.create!(user_id: user1.id, event_time: Time.new(2019,9,25,12,0,0), type_evt: :clock_out)
ClockEvent.create!(user_id: user1.id, event_time: Time.new(2019,9,25,13,0,0), type_evt: :clock_in)
ClockEvent.create!(user_id: user1.id, event_time: Time.new(2019,9,25,18,0,0), type_evt: :clock_out)

ClockEvent.create!(user_id: user2.id, event_time: Time.new(2019,9,25,8,0,0), type_evt: :clock_in)
ClockEvent.create!(user_id: user2.id, event_time: Time.new(2019,9,25,12,0,0), type_evt: :clock_out)
ClockEvent.create!(user_id: user2.id, event_time: Time.new(2019,9,25,13,0,0), type_evt: :clock_in)
ClockEvent.create!(user_id: user2.id, event_time: Time.new(2019,9,25,18,0,0), type_evt: :clock_out)