class ChatChannel < ApplicationCable::Channel
    
  def subscribed
      stream_from "chat_#{params['chat_subscribe_id']}_channel"
      #stream_from "chat_#{params['chat_id']}_channel" 
  end

  def unsubscribed
    # Any cleanup needed when channel is unsubscribed
  end
  
  def receive(payload)
      Message.create(user_id: current_user.id, chat_id: params["chat_subscribe_id"], text: payload["text"])
      puts "payloader freeloader"
  end    
    
end