class MessagesController < ApplicationController
  def create
    @run = Run.find(params[:run_id])
    @message = Message.new(message_params)
    @message.run = @run
    @message.attendance = @run.attendances.find_by(user_id: current_user.id)
    authorize @message
    if @message.save
      @message.run.users.each do |user|
        Notification.create(user: user, message: @message)
      end
      RunChannel.broadcast_to(
        @run,
        render_to_string(partial: "messages/message", locals: { message: @message })
      )
      head :ok
    else
      render "runs/chatroom", status: :unprocessable_entity
    end
  end

  private

  def message_params
    params.require(:message).permit(:content)
  end
end
