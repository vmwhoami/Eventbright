class InvitationsController < ApplicationController
  def new; end

  def create
    # debugger
    @invitation = Invitation.new(person_to_come_id: params[:user_id], event_party_id: params[:event_party_id])
    if @invitation.save
      flash[:success] = 'Invitation sent'
      redirect_to event_path(params[:event_party_id])
    else
      flash[:error] = 'Something went wrong'
      redirect_to user_path(current_user)
    end
  end
end
