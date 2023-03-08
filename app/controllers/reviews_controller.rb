class ReviewsController < ApplicationController

  def new
    raise
    @review = Review.new
    authorize @review
  end

  def create
    @run = Run.new
    @review = Review.new
  end
end
