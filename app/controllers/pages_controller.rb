class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :home ]
  # after_action :mark_as_read, only: [ :notifications ]

  def home
    @disable_nav = true
    @disable_banner = true
  end

  def dashboard
    # Runs I created :
    @runs = Run.where(user: current_user)
    # Attendance requests I received :
    @pending_attendances = Attendance.joins(:run).where(runs: { user_id: current_user })
  end

  def chatrooms
    @attendances = Attendance.where(user: current_user)
  end

  def notifications
    @notifications = Notification.where(user: current_user)
  end

  # private

  # def mark_as_read
  #  @notifications.update_all(read: true)
  # end
end
