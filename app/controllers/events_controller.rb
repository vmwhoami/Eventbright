class EventsController < ApplicationController
  include EventsHelper
  before_action :logged_user?, except: %i[index]
  def index
    @past = Event.past
    @future = Event.future
  end

  def new
    @event = current_user.events.build
  end

  def create
    @event = current_user.events.build(permited_params)
    if @event.save
      flash[:success] = 'Event created'
      redirect_to event_path(@event)
    else
      flash.now[:error] = 'Could not create event'
      render :new
    end
  end

  def show
    @event = Event.find(params[:id])
    @users = User.all
  end

  private

  def permited_params
    params.require(:event).permit(:name, :location, :datetime, :description)
  end
end
