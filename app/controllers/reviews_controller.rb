class ReviewsController < ApplicationController

  def new
    @attendance = Attendance.find(params[:attendance_id])
    @review = Review.new
    @review.attendance = @attendance
    authorize @review
  end

  def create
    @attendance = Attendance.find(params[:attendance_id])
    @user = current_user
    @review = Review.new(review_params)
    @review.attendance = @attendance
    @review.user = @user
    if @review.save
      redirect_to
    else
      redirect_to (@review), status: :unprocessable_entity
    end
  end

  private

  def review_params
    params.require(:review).permit(:content, :rating)
  end
end
