class InvitationsController < ApplicationController
 
 def new
 
 end
 
 
  def create
    @invitation = Invitation.new(params[:id])
    if @invitation.save
      flash[:success] = "Invitation sent"
      redirect_to @object
    else
      flash[:error] = "Something went wrong"
      render 'new'
    end
  end
  
end