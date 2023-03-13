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
    authorize @review
    if @review.save
      redirect_to profile_path(@attendance.run.user), notice: 'Thank you for your review!' # adapter la redirection en fonction de ce qu'on voudra faire
    else
      flash[:alert] = "Something went wrong"
      render :new
    end
  end

  private

  def review_params
    params.require(:review).permit(:comment, :rating)
  end
end
