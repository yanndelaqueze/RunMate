class RunsController < ApplicationController
  skip_before_action :authenticate_user!, only: %i[index show]
  before_action :set_run, only: %i[show edit update destroy]

  def index
    @runs = Run.all
    @markers = @runs.geocoded.map do |run|
      {
        lat: run.latitude,
        lng: run.longitude,
        run_info_map_html: render_to_string(partial: "run_info_map", locals: { run: run })
      }
    end
  end

  def map
    @runs = Run.all
  end

  def show
    authorize @run
  end

  def new
    @run = Run.new
    authorize @run
  end

  def create
    @run = Run.new(run_params)
    @run.user = current_user
    authorize @run
    if @run.save
      redirect_to run_path(@run)
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit
    authorize @run
  end

  def update
    authorize @run
    if @run.update(run_params)
      redirect_to run_path(@run), notice: 'Your run was successfully updated'
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    authorize @run
    @run.destroy
    redirect_to runs_path, status: :see_other
  end

  private

  def set_run
    @run = Run.find(params[:id])
  end

  def run_params
    params.required(:run).permit(:name, :description, :category, :level, :distance, :max_person, :meeting_point, :date, :circuit)
  end
end
