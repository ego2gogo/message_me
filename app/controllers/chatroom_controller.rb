class ChatroomController < ApplicationController
  def index
    # use this if you want to paginate messages
    @messages = Message.paginate(page: params[:page], per_page: 10)
    # otherwise, use this
    # @messages = Message.all
    @message = Message.new
  end
end