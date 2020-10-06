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
end

end
