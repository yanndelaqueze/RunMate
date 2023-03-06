class RunsController < ApplicationController
  before_action :set_run, only: %i[show edit update destroy]

  def index
    @run = Run.all
  end

  def show
  end

  def new
    @run = Run.new
  end

  def create
    @run = Run.new(run_params)
    if run.save
      redirect_to run_path(@run)
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit
  end

  def update
    if @run.update(run_params)
      redirect_to run_path(@run), notice: 'Your run was successfully updated'
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    @run.destroy
    redirect_to runs_path
  end

  private

  def set_run
    @run = Run.find(params[:id])
  end

  def run_params
    params.required(:run).permit(:description, :category, :level, :distance, :max_person, :meeting_point, :date, :circuit)
  end
end
