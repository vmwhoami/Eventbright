class EventsController < ApplicationController
  def show
    @events = Event.person_to_comes
  end
end
