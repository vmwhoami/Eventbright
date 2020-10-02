class Event < ApplicationRecord
  validates :name, presence: true
  belongs_to :creator, class_name: "User"

  has_many :invitations,  foreign_key: :event_party
  has_many :person_to_comes, through: :invitations

end
