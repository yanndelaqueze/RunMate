class MessagesController < ApplicationController
  def create
    @run = Run.find(params[:run_id])
    @message = Message.new(message_params)
    @message.run = @run
    @message.attendance = @run.attendances.find_by(user_id: current_user.id)
    authorize @message
    if @message.save
      @sender = @message.attendance.user
      @message.run.users.excluding(@sender).each do |recipient|
        Notification.create(user: recipient, message: @message)
        MessageNotificationsChannel.broadcast_to(
          recipient, recipient.unread_messages_count)
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
