class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :home ]

  def home
    @disable_nav = true
    @disable_banner = true
  end

  def dashboard
    # Runs I created :
    @runs = Run.where(user: current_user)
    # Attendance requests I received :
    @pending_attendances = Attendance.joins(:run).where(runs: { user_id: current_user })
    # @bookings = Booking.joins(:meal).where(meal: { user_id: current_user })
  end
end
