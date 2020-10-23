module SessionsHelper

  def log_in(user)
    session[:user_id] = user.id #Don't forget session is a hash so square brackets
  end
  
  def current_user
    @current_user||= User.find_by(id: session[:user_id])
  end

  def log_out 
    session[:user_id] = nil
    @current_user = nil
  end

  def login_icon
    link_to "Login", login_path,  class: "btn btn-outline-primary active" if !current_user
  end

  def logout_icon
   render "layouts/logout" if current_user
  end
def username
  render  "layouts/username" if current_user
end
 

end
