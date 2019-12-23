class ChatController < ApplicationController

  def index
    @msgs = Msg.all
    @msg = Msg.new
  end

end