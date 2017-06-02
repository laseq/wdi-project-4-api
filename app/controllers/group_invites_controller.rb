class GroupInvitesController < ApplicationController
  before_action :set_group_invite, only: [:show, :update, :destroy, :decline]

  def create
    @invite = @current_user.requests_as_sender.new(group_invite_params)

    if @invite.save
      render json: @invite, status: :created
    else
      render json: @invite.errors, status: :unprocessable_entity
    end
  end

  def view_requests
    @invites = Group.find_by_id(params[:group_id]).requests

    render json: @invites
  end

  def update
    if @invite.update(group_invite_params)
      render json: @invite
    else
      render json: @invite.errors, status: :unprocessable_entity
    end
  end

  def destroy
    @invite.destroy
  end



  def accept
    @invite[:status] = "accepted"

    render json: @invite
  end

  def decline
    @invite.destroy
  end



  private
    # Use callbacks to share common setup or constraints between actions.
    def set_group_invite
      @invite = Request.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def group_invite_params
      params.permit(:group_id, :status, :sender_id, :receiver_id)
    end
end
