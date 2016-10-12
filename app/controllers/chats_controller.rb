class ChatsController < ApplicationController
    
    def index
        if !user_signed_in?
            redirect_to new_user_session_path
        else
            @chats = current_user.chats
            session[:last_page] = chats_path
        end
    end
    
    def create
        if @chat = Chat.between(params[:sender_id], params[:recipient_id]).present?
            @chat = Chat.between(params[:sender_id], params[:recipient_id]).first
        else
            @chat = Chat.create(chat_params)
        end
        redirect_to chat_messages_path(@chat)
    end
    
    private
    
        def chat_params
            params.permit(:recipient_id, :sender_id)        
        end
end