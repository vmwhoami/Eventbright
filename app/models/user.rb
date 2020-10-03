class User < ApplicationRecord
  validates :name, presence: true, uniqueness: { case_sensitive: false }
  validate(:check_name_length) 
 has_many :events, foreign_key: :creator_id, class_name: "Event" ,dependent: :destroy

 has_many :invitations, foreign_key: :person_to_come
 has_many :event_parties, through: :invitations

 def check_name_length
  if self.name.length <= 4
    errors[:name] << "is too short must be longer than 4 characters"
  end 
 end
end
