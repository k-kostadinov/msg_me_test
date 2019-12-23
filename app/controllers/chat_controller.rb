class ChatController < ApplicationController
  def index
    @msgs = Msg.all
  end

end