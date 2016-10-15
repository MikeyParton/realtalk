class MessagesController < ApplicationController
    
    def index
        @chat = Chat.find(params[:chat_id])
        @message = @chat.messages.new
        @messages = @chat.messages
        session[:chat_id] = @chat.id
        @chat.read(current_user)
        puts session[:last_page]
    end
    
    def create
        @chat = Chat.find(params[:chat_id])
        @message = @chat.messages.build(message_params)
        if @message.save
            #Chats are ordered based on recent activity
            @chat.touch 
            head :ok
        end
    end
    
    private
    
        def message_params
            params.require('message').permit(:text, :user_id)
        end
end