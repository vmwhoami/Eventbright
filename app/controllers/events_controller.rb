class EventsController < ApplicationController
include EventsHelper
before_action :logged_user? ,except: [:index]
def index
end

def new
 @event = current_user.events.build
end

def create
@event =  current_user.events.build(permited_params)
if @event.save
  flash[:success] = "Event created"
  redirect_to event_path(@event)
else
  flash.now[:error] = "Could not create event"
  rende :new
end

def show
  @event = Event.find_by(params[:id])
end

end
private

def permited_params
  params.require(:event).permit(:name,:location,:datetime,:description)
end

end
