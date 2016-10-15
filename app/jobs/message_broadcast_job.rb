class MessageBroadcastJob < ApplicationJob  
  queue_as :default

  def perform(message) 
      ActionCable.server.broadcast "chat_#{message.chat_id}_channel",
                                  text:  message.text,
                                  user_id: message.user_id,
                                  chat_id: message.chat_id,
                                  date: message.created_at.strftime("%b %d"),
                                  time: message.created_at.strftime("%l:%M%p"),
                                  last_read: message.chat.messages[-2].read
  end 

  private 
    #def render_message(message) 
    #  ApplicationController.renderer.render(partial: 'messages/message', locals: { message: message }) 
    #end 
end 