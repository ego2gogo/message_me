class MessagesController < ApplicationController
  def create
    current_user = User.find(session[:user_id])
    message = current_user.messages.build(message_params)
    if message.save
      # ActionCable.server.broadcast "chatroom_channel", mod_message: message_render(message)
      redirect_to root_path
    else
      render 'chatroom/index'
    end
  end
  private
  def message_params
    params.require(:message).permit(:body)
  end

end