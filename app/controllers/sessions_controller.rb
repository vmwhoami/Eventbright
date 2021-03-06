class SessionsController < ApplicationController
  def new; end

  def create
    user = User.find_by(name: params[:session][:name])
    if user
      log_in(user)
      redirect_to root_path
    else
      flash[:danger] = 'Non registered name'
      render 'new'
    end
  end

  def destroy
    log_out
    redirect_to login_path
  end
end
