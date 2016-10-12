class MessagesController < ApplicationController
    
    def index
        @chat = Chat.find(params[:chat_id])
        @message = @chat.messages.new
        @messages = @chat.messages
        session[:chat_id] = @chat.id
    end
    
    def create
        @chat = Chat.find(params[:chat_id])
        @message = @chat.messages.build(message_params)
        if @message.save
            redirect_to chat_messages_path(@chat)
        else
        end
    end
    
    private
    
        def message_params
            params.require('message').permit(:text, :user_id)
        end
end