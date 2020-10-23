module EventsHelper
include SessionsHelper

def logged_user?
  unless current_user
  redirect_to login_path
  else
    return  
  end
end

def create_event
   link_to "Create event", new_event_path, class: "p-2 text-dark" if current_user
end

end
