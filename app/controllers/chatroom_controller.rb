class ChatroomController < ApplicationController
  before_action :require_user, only: %i[index]

  def index
    @message = Message.new
    @messages = Message.all
  end
end
