# frozen_string_literal: true

class Invitation < ApplicationRecord
  belongs_to :person_to_come, class_name: 'User'
  belongs_to :event_party, class_name: 'Event'
end
