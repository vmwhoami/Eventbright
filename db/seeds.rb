# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.destroy_all
Event.destroy_all


User.create(name:"Vitalie")
User.create(name:"Olea")
User.create(name:"Adama")
User.create(name:"Sergiu")
User.create(name:"Ina")
User.create(name:"Nicoli")
User.create(name:"Galina")
User.create(name:"Victoria")


puts "Users Created!"


4.times do |e|
 event = Event.new
 event.name = "The #{e}'st party"
 event.creator = User.first
 event.location = "Sf. Andrei 4#{e}"
 event.datetime = Time.now + 10.day
 event.description = "#{e}. Aperiam itaque, eligendi, aspernatur, vel asperiores necessitatibus tempore omnis distinctio libero quae labor"
 event.save
end

puts "Events created successfully!"


3.times do |i|
invite = Invitation.new
invite.event_party = Event.first
invite.person_to_come = User.first
invite.person_to_come = User.second
invite.person_to_come = User.third
invite.save
end


puts "Invitations created successfully!"
