class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :home ]

  def home
    @disable_nav = true
    @disable_banner = true
  end

  def dashboard
    # Runs I created :
    @runs = Run.where(user: current_user).where('date > ?', DateTime.now).order(date: :desc)
    # Attendance requests I received :
    @pending_attendances = Attendance.joins(:run).where(runs: { user_id: current_user })
    @past_runs = Run.where(user: current_user).where('date < ?', DateTime.now).order(date: :desc)
  end

  def chatrooms
    @attendances = Attendance.where(user: current_user)
    @notifications_for_messages = current_user.notifications.for_messages
    @notifications_for_messages.update_all(read: true)
  end

  def notifications
    @notifications_for_attendances = current_user.notifications.for_attendances
    @notifications_for_attendances.update_all(read: true)
  end
end
