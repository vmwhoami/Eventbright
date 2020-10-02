class CreateInvitations < ActiveRecord::Migration[6.0]
  def change
    create_table :invitations do |t|
      t.integer :event_party_id
      t.integer :person_to_come_id
      
      t.timestamps
    end
    add_index :invitations, :event_party_id 
    add_index :invitations, :person_to_come_id 
   
  end
end
