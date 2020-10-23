class UsersController < ApplicationController
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
  def permited_params
   params.require(:user).permit(:name)
  end
end
