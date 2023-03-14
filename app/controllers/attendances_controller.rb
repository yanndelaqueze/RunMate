class AttendancesController < ApplicationController
  def index
    @attendances = Attendance.all
  end

  def new
    @run = Run.find(params[:run_id])
    @attendance = Attendance.new
    authorize @attendance
  end

  def create
    @run = Run.find(params[:run_id])
    @user = current_user
    @attendance = Attendance.new(attendance_params)
    @attendance.user = @user
    @attendance.run = @run
    authorize @attendance
    if @attendance.save
      redirect_to run_path(@run)
    else
      redirect_to run_path(@run), status: :unprocessable_entity
    end
  end

  def destroy
    @attendance = Attendance.find(params[:id])
    authorize @attendance
    @attendance.destroy
    redirect_to attendances_path
  end

  def confirm
    @attendance = Attendance.find(params[:id])
    @attendance.status = "confirmed"
    authorize @attendance
    @attendance.save
    Notification.create(user: @attendance.user, attendance: @attendance)
    NotificationsChannel.broadcast_to(
      @attendance.user, @attendance.user.unread_notifications_count)
    # redirect_to dashboard_path
    head :ok
  end

  def decline
    @attendance = Attendance.find(params[:id])
    @attendance.status = "declined"
    authorize @attendance
    @attendance.save
    redirect_to dashboard_path
  end

  private

  def attendance_params
    params.require(:attendance).permit(:content, :status)
  end
end
