require 'open-uri'
require 'json'

class RunsController < ApplicationController
  skip_before_action :authenticate_user!, only: %i[index show map]
  before_action :set_run, only: %i[show edit update destroy chatroom weather]

  def index
    if params[:query].present? || params[:start_date].present? || params[:hour].present?
      search
    else
      @runs = Run.where('date > ?', DateTime.now)
    end
    markers
  end

  def markers
    @runs = Run.where(id: @runs.map(&:id))
    @markers = @runs.geocoded.map do |run|
      {
        lat: run.latitude,
        lng: run.longitude,
        run_info_map_html: render_to_string(partial: "run_info_map", locals: { run: run }),
        run_marker_html: render_to_string(partial: "run_marker", locals: { run: run })
      }
    end
  end

  def search
    @runs = Run.where('date > ?', DateTime.now)

    # only one time zone is considered in this search
    Time.zone = "Europe/Paris"

    t = Time.zone.parse(params[:hour]) || Time.zone.parse("00:00")

    params[:start_date].present? ? d1 = Time.zone.parse(params[:start_date]).to_date : d1 = Time.now.to_date
    params[:end_date].present? ? d2 = Time.zone.parse(params[:end_date]).to_date : d2 = d1 + 5
    d2 = d1 + 1 if d2 == d1

    d1 = Time.zone.parse("#{d1.strftime('%F')} #{t.strftime('%T')}")
    d2 = Time.zone.parse("#{d2.strftime('%F')} #{t.strftime('%T')}")

    time_added = Time.parse("02:00:00").seconds_since_midnight.seconds
    d2 += time_added

    if params[:query].present?
      @runs = @runs.select { |run| (d1..d2).cover?(run.date) } if params[:date_start].present?

      @runs = @runs.near(params[:query], 10, units: :km, order: :distance)
                   .reverse_order

    elsif params[:start_date].present? || params[:hour].present?
      @runs = @runs.select { |run| (d1..d2).cover?(run.date) }
    else
      @runs = []
    end
  end

  def show
    @marker =
      [{
        lat: @run.geocode[0],
        lng: @run.geocode[1],
        run_info_smallmap_html: render_to_string(partial: "run_info_smallmap", locals: { run: @run }),
        run_marker_html: render_to_string(partial: "run_marker", locals: { run: @run })
      }]
    authorize @run
    @confirmed_users = @run.users.where(attendances: { status: "confirmed" })
    weather
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
      redirect_to dashboard_path
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

  def chatroom
    @message = Message.new
    authorize @run
  end

  def weather
    payload = URI.open("https://api.openweathermap.org/data/2.5/forecast?lat=#{@run.latitude}&lon=#{@run.longitude}&appid=#{ENV['OPENWEATHER_KEY']}&units=metric").read
    # data = JSON.parse(payload)["list"].find { |hash| hash["dt"] == @run.date.change({hour: (@run.date.hour / 3.0).ceil * 3 }).to_i }
    data = JSON.parse(payload)["list"].find { |hash| hash["dt"] == ((@run.date).to_i / 10800.0).ceil * 10800 }
    if data.nil?
      "no data available"
    else
      @temp = data["main"]["temp"]
      @weather = data["weather"][0]["main"]
      @icon = data["weather"][0]["icon"]
    end
  end

  # def map
  #   @runs = Run.all
  #   @markers = @runs.geocoded.map do |run|
  #     {
  #       lat: run.latitude,
  #       lng: run.longitude,
  #       run_info_map_html: render_to_string(partial: "run_info_map", locals: { run: run })
  #     }
  #   end
  #   authorize @runs
  # end

  private

  def set_run
    @run = Run.find(params[:id])
  end

  def run_params
    params.required(:run).permit(:name, :description, :category, :level, :distance, :max_person, :meeting_point, :date, :circuit)
  end
end
