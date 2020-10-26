module EventsHelper
include SessionsHelper

def logged_user?
  unless current_user
  redirect_to login_path
  else
    return  
  end
end

def current_user?
  redirect_to users_path if current_user != @user
end

def create_event
   link_to "Create event", new_event_path, class: "btn btn-outline-success " if current_user
end

def render_invited_users(event,user)
  render "events/uninvited"  unless event.person_to_comes.include?(user) || event.creator == user
end

 
end
