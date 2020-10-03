class UsersController < ApplicationController
  def new
    @user = User.new
  end

  def create
    @user = User.new(permited_params)
  end

  def show
  end

  private
  def permited_params
   params.require(:user).permit(:name)
  end
end
