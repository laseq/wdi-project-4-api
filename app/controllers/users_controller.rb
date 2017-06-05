class UsersController < ApplicationController
  before_action :set_user, only: [:show, :update, :destroy]

  # GET /users
  def index
    @users = User.all

    render json: @users
  end

  # GET /users/1
  def show
    render json: @user
  end

  # GET /users/search_by_email for sending group invites
  def search_by_email
    @user = User.find_by(email: params[:email])
    # @user = User.find_by_email(params[:email])

    # render json: @user.as_json(only: [:id, :first_name, :last_name, :email])
    render json: @user
  end

  def search_by_email_in_group
    @user = User.find_by(email: user_params[:email])
    @group = Group.find_by_id(params[:group_id])
    @message = {:message => "This user has already received an invite"}

    if (@group.invited_members.where(email: user_params[:email]).length == 0)
      render json: @user
    elsif (@user.present?)
      render json: @message
    else
      render json: @user.errors, status: :unprocessable_entity
    end

  end

  # POST /users
  def create
    @user = User.new(user_params)

    if @user.save
      render json: @user, status: :created, location: @user
    else
      render json: @user.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /users/1
  def update
    if @user.update(user_params)
      render json: @user
    else
      render json: @user.errors, status: :unprocessable_entity
    end
  end

  # DELETE /users/1
  def destroy
    @user.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_user
      @user = User.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def user_params
      params.require(:user).permit(:first_name, :last_name, :username, :email, :password_digest, :sex, :phone, :location, :image)
    end
end
