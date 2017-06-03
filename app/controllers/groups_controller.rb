class GroupsController < ApplicationController
  before_action :set_group, only: [:show, :update, :destroy]

  # GET /groups
  def index
    @groups = Group.all

    render json: @groups
  end

  def user_groups
    # We're finding the group ids where the current user has accepted the group join request
    valid_group_ids = @current_user.requests_as_receiver.where(status:"accepted").pluck("group_id")
    # We're combining the groups_as_creator and groups_as_member into @groups
    data = []
    data << @current_user.groups_as_creator
    # data << @current_user.groups_as_member
    data << @current_user.groups_as_member.where(id: valid_group_ids)
    @groups = data.flatten

    render json: @groups
  end

  # GET /groups/1
  def show
    render json: @group
  end

  # POST /groups
  def create
    # @group = Group.new(group_params)
    @group = @current_user.groups_as_creator.new(group_params)

    if @group.save
      render json: @group, status: :created, location: @group
    else
      render json: @group.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /groups/1
  def update
    if @group.update(group_params)
      render json: @group
    else
      render json: @group.errors, status: :unprocessable_entity
    end
  end

  # DELETE /groups/1
  def destroy
    @group.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_group
      @group = Group.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def group_params
      params.require(:group).permit(:name, :description, :creator_id, :image)
    end
end
