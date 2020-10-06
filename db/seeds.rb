# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Event.destroy_all
User.destroy_all

Invitation.destroy_all

User.create(name:"Vitalie")
User.create(name:"Olea")
User.create(name:"Adama")
User.create(name:"Sergiu")
User.create(name:"Ina")
User.create(name:"Nicoli")
User.create(name:"Galina")
User.create(name:"Victoria")


puts "Users Created!"


1.times do |e|
  event = Event.new
  event.name = "Last party"
  event.creator = User.first
  event.location = "Alecu Russo"
  event.datetime = Time.now - 4.day
  event.description = "It was party no one can forget "
  event.save
 end
 

3.times do |e|
 event = Event.new
 event.name = "The #{e}'st party"
 event.creator = User.last
 event.location = "Sf. Andrei 4#{e}"
 event.datetime = Time.now + e.day
 event.description = "#{e}. Aperiam itaque, eligendi, aspernatur, vel asperiores necessitatibus tempore "
 event.save
end

puts "Events created successfully!"

Invitation.create(event_party: Event.first,person_to_come:User.second)
Invitation.create(event_party: Event.first,person_to_come:User.third)
Invitation.create(event_party: Event.first,person_to_come:User.fourth)


Invitation.create(event_party: Event.second,person_to_come:User.second)
Invitation.create(event_party: Event.second,person_to_come:User.third)
Invitation.create(event_party: Event.second,person_to_come:User.fourth)


Invitation.create(event_party: Event.third,person_to_come:User.second)
Invitation.create(event_party: Event.third,person_to_come:User.third)
Invitation.create(event_party: Event.third,person_to_come:User.fourth)

puts "Invitations created successfully!"
