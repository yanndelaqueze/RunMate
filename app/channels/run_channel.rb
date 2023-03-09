class RunChannel < ApplicationCable::Channel
  def subscribed
    # stream_from "some_channel"
    run = Run.find(params[:id])
    stream_for run
  end

  def unsubscribed
    # Any cleanup needed when channel is unsubscribed
  end
end
