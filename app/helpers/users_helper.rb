module UsersHelper
  def user_name
    current_user&.name
  end

  def register_icon
    link_to 'Register', new_user_path, class: 'btn btn-outline-primary' unless current_user
  end

  def all_users
    link_to 'All users', users_path, class: 'btn btn-outline-secondary' if current_user
  end
end
