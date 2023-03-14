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
  end

  def notifications
    @notifications = current_user.notifications
    @notifications.update_all(read: true)
  end
end
