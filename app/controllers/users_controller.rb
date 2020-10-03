class UsersController < ApplicationController
  def new
    @user = User.new
  end

  def create
    @user = User.new(permited_params)
   
    begin
      @user.save 
      redirect_to user_path
    rescue => exception
      flash.now[:error] = "Sorry"
      render "new"
    else
      redirect_to root_path
    end
  end

  def show
  end

  private
  def permited_params
   params.require(:user).permit(:name)
  end
end
