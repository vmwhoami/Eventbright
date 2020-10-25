class User < ApplicationRecord
  validates :name, presence: true, uniqueness: { case_sensitive: false }

# def event
#   Event.where({creator_id: self.id})
# end

  validate(:check_name_length) 


#has_many is a function
# has_many(method_name,options hash)
#in our case events is the method name
 has_many(:events,{ #method name
  primary_key: :id, #user id current table
  foreign_key: :creator_id, #On the other table foreigh key
  class_name: :Event, #Other class name
  dependent: :destroy})#If a user gets deleted it dependeces will be deleted

 has_many :invitations, foreign_key: :person_to_come
 has_many :event_parties, through: :invitations

 def check_name_length
  if self.name.length <= 3
    errors[:name] << "is too short must be longer than 4 characters"
  end 
 end
end
