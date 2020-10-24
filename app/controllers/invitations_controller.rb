class InvitationsController < ApplicationController
 
 def new
 
 end
 
 
  def create
    debugger
    @invitation = Invitation.new(person_to_come_id: params[:person_to_come_id],event_party_id:params[:event_party_id])
    if @invitation.save
      flash[:success] = "Invitation sent"
      redirect_to root_path
    else
      flash[:error] = "Something went wrong"
      redirect_to user_path(current_user)
    end
  end
  
end