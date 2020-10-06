module UsersHelper

  def user_name
    current_user.name if current_user
  end

end
