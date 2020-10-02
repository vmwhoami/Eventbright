class Event < ApplicationRecord
  validates :name, presence: true
  belongs_to :user

  has_many :invitations,  foreign_key: :event_party
  has_many :person_to_comes, through: :invitations

end
