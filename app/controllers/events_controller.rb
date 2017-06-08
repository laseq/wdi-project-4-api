class EventsController < ApplicationController
  before_action :set_event, only: [:show, :update, :destroy, :attending, :not_attending, :state_attendance]

  # GET /events
  def index
    @events = Event.all

    render json: @events
  end

  # GET /events/1
  def show
    render json: @event
  end

  def attending
  @attendance_record = AttendanceStatus.where(user_id: @current_user.id).first

    if (@attendance_record)
      if @attendance_record.update(event_id: @event.id, user_id: @current_user.id, status: "attending")
        render json: @attendance_record
      else
        render json: @attendance_record.errors, status: :unprocessable_entity
      end
    else
      @attendance = @current_user.attendance_statuses.new(event_id: params[:id], status: "attending")
      if @attendance.save
        render json: @attendance, status: :created
      else
        render json: @attendance.errors, status: :unprocessable_entity
      end
    end

  end

  def not_attending
    @attendance_record = AttendanceStatus.where(user_id: @current_user.id).first

      if (@attendance_record)
        if @attendance_record.update(event_id: @event.id, user_id: @current_user.id, status: "not attending")
          render json: @attendance_record
        else
          render json: @attendance_record.errors, status: :unprocessable_entity
        end
      else
        @attendance = @current_user.attendance_statuses.new(event_id: params[:id], status: "not attending")
        if @attendance.save
          render json: @attendance, status: :created
        else
          render json: @attendance.errors, status: :unprocessable_entity
        end
      end
  end

  def state_attendance
    @attendance_record = AttendanceStatus.where(user_id: @current_user.id).first

      if (@attendance_record)
        if @attendance_record.update(event_id: @event.id, user_id: @current_user.id, status: params[:attendance_status])
          render json: @attendance_record
        else
          render json: @attendance_record.errors, status: :unprocessable_entity
        end
      else
        @attendance = @current_user.attendance_statuses.new(event_id: params[:id], status: params[:attendance_status])
        if @attendance.save
          render json: @attendance, status: :created
        else
          render json: @attendance.errors, status: :unprocessable_entity
        end
      end
  end

  # POST /events
  def create
    # @event = Event.new(event_params)
    @group = Group.find_by_id(params[:group_id])
    @event = @group.events.new(event_params)
    if @event.save
      render json: @event, status: :created, location: @event
    else
      render json: @event.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /events/1
  def update
    # @group = Group.find_by_id(params[:group_id])

    if @event.update(event_params)
    # if @group.events.find_by_id(params[:id]).update(event_params)
      render json: @event
    else
      render json: @event.errors, status: :unprocessable_entity
    end
  end

  # DELETE /events/1
  def destroy
    @event.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_event
      @event = Event.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def event_params
      params.require(:event).permit(:name, :start_time, :end_time, :location, :description, :dress_code, :status, :group_id, :attendance_status)
    end
end
