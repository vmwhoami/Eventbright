module SessionsHelper

  def log_in(user)
    session[:user_id] = user.id #Don't forget session is a hash so square brackets
  end
  
  def current_user
    @current_user||= User.find_by(id: session[:user_id])
  end

  def logged_in?
    !!@current_user
  end



end
