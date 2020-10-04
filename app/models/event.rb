class Event < ApplicationRecord
  validates :name, presence: true
  belongs_to(:creator,{
    primary_key: :id, #User Id
    foreign_key: :creator_id,#From Events table
    class_name: :User})

  # def user
  #   User.find(creator_id)
  # end 


  has_many :invitations,  foreign_key: :event_party
  has_many :person_to_comes, through: :invitations

end
