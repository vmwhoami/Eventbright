# frozen_string_literal: true

# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20_201_006_204_308) do
  # These are extensions that must be enabled in order to support this database
  enable_extension 'plpgsql'

  create_table 'events', force: :cascade do |t|
    t.bigint 'creator_id', null: false
    t.string 'name'
    t.string 'location'
    t.date 'datetime'
    t.datetime 'created_at', precision: 6, null: false
    t.datetime 'updated_at', precision: 6, null: false
    t.string 'description'
    t.index ['creator_id'], name: 'index_events_on_creator_id'
  end

  create_table 'invitations', force: :cascade do |t|
    t.integer 'event_party_id'
    t.integer 'person_to_come_id'
    t.datetime 'created_at', precision: 6, null: false
    t.datetime 'updated_at', precision: 6, null: false
    t.index %w[event_party_id person_to_come_id], name: 'index_invitations_on_event_party_id_and_person_to_come_id', unique: true
    t.index ['event_party_id'], name: 'index_invitations_on_event_party_id'
    t.index ['person_to_come_id'], name: 'index_invitations_on_person_to_come_id'
  end

  create_table 'users', force: :cascade do |t|
    t.string 'name'
    t.datetime 'created_at', precision: 6, null: false
    t.datetime 'updated_at', precision: 6, null: false
  end

  add_foreign_key 'events', 'users', column: 'creator_id'
end
