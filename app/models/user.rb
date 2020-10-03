class User < ApplicationRecord
 has_many :events, foreign_key: :creator_id, class_name: "Event" ,dependent: :destroy

 has_many :invitations, foreign_key: :person_to_come
 has_many :event_parties, through: :invitations
end
