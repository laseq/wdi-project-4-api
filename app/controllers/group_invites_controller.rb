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

  # Sending group join requests en masse
  def mass_create
    requests = []
    group_invite_params[:mass_requests].each do |element|
      requests << @current_user.requests_as_sender.new(:group_id => element[:group_id], :receiver_id => element[:receiver_id], :status => "pending")
    end

    @invites = Request.import requests

    if @invites
      render json: requests, status: :created
    else
      render json: requests.errors, status: :unprocessable_entity
    end
  end

  def view_requests
    @invites = Group.find_by_id(params[:group_id]).requests

    render json: @invites
  end

  def current_user_pending_requests
    @invites = Request.where("receiver_id = ? AND status = ?", @current_user.id, "pending")

    render json: @invites
  end

  def update
    if @current_user.requests_as_receiver.find_by_id(params[:id]).update(status: "accepted")
    # if @invite.update(group_invite_params)
      render json: @current_user.requests_as_receiver.find_by_id(params[:id])
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
      params.permit(:group_id, :status, :sender_id, :receiver_id, mass_requests: [:group_id, :receiver_id])
    end
end
