class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :home ]

  def home
  end

  def dashboard
    # Runs I created :
    @runs = Run.where(user: current_user)
    # Attendance requests I received :
    @pending_requests = Attendance.joins(:run).where(run: { user_id: current_user }).where(attendance.pending)
  end

end
