# # This file should contain all the record creation needed to seed the database with its default values.
# # The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
# #
# Event.destroy_all
# User.destroy_all
# Invitation.destroy_all

# User.create(name:"Vitalie")
# User.create(name:"Olea")
# User.create(name:"Adama")
# User.create(name:"Sergiu")
# User.create(name:"Ina")
# User.create(name:"Galina")
#   20.times do |user|
#     User.create(name:"user_#{user}")
#   end

# puts "--"*100
# puts "Users Created!"
# b = 1
# 5.times do |e|
#   b+=1
#   Event.create(
#     name:"Event #{e}",
#     creator:User.find_by_id(b),
#     location: "Alecu Russo #{e}",
#     datetime:Time.now + e.day
#   )
#  end
 
#  5.times do |e|
#   b+=1
#   Event.create(
#     name:"A fost #{e}",
#     creator:User.find_by_id(b),
#     location: "Sfintul Andrei #{e}",
#     datetime:Time.now - e.day
#   )
#  end

#  puts "--"*100
# puts "Events created successfully!"

 
# # 7.times do |i|
# #   Invitation.create(
# #     event_party:Event.first,
# #     person_to_come:User.find(b)
# #   )
# #   b+=1
# # end
# # Invitation.create(event_party: Event.third,person_to_come:User.second)
# # Invitation.create(event_party: Event.third,person_to_come:User.third)
# # Invitation.create(event_party: Event.third,person_to_come:User.fourth)
# puts "--"*100
# puts "Invitations created successfully!"
