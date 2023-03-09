class MessagesController < ApplicationController
  def create
    @run = Run.find(params[:run_id])
    @message = Message.new(message_params)
    @message.run = @run
    @message.attendance = @run.attendances.find_by(user_id: current_user.id)
    authorize @message
    if @message.save
      redirect_to chatroom_run_path(@run)
    else
      render "runs/chatroom", status: :unprocessable_entity
    end
  end

  private

  def message_params
    params.require(:message).permit(:content)
  end
end
