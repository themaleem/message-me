class MessagesController < ApplicationController
  before_action :require_user, only: %i[create]

  def create
    message = current_user.messages.build(message_params)
    if message.save
      # transmit newly saved message to coffee script recieved
      ActionCable.server.broadcast("chatroom_channel", new_message: message_render(message))
    end
  end

  private

  def message_params
    params.require(:message).permit(:body)
  end

  def message_render(message)
    render(partial: 'message', locals: {message: message})
  end

end
