class UsersController < ApplicationController

  include EventsHelper
  before_action :find_user,only: %i[show]
before_action :logged_user? ,only: %i[index show ]
before_action :current_user? ,only: %i[show]
def index
  @users = User.all
end


  def new
    @user = User.new
  end

  def create
    @user = User.new(permited_params) 
    if  @user.save 
      log_in(@user)
       redirect_to  root_path
    else
      flash.now[:error] = "Sorry"
      render "new"
    end
  end

  def show
    @user = User.find(params[:id])
  end

  private
def find_user
  @user = User.find(params[:id])
end

  def permited_params
   params.require(:user).permit(:name)
  end
end
