class MsgsController < ApplicationController

  before_action :require_user

  def create
    msg = current_user.msgs.build(msg_params)
    if msg.save
      ActionCable.server.broadcast 'chat_channel',
        foo: msg.body
    end

  end

  private

  def msg_params
    params.require(:msg).permit(:body)
  end

end