class AddUniquenessToInvitaions < ActiveRecord::Migration[6.0]
  def change
    add_index :invitations, [:event_party_id, :person_to_come_id], unique: true
  end
end
