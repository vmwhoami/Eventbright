class User < ApplicationRecord
  has_many :events 

 has_many :invitations, foreign_key: :person_to_come
 has_many :event_parties, through: :invitations
end
