class UsersController < ApplicationController
    before_action :delete_empty_chat, :remove_notifications, only: :index
    
    def index
        if !user_signed_in?
            redirect_to new_user_session_path
        else
            @users = User.order('name')
            session[:last_page] = contacts_path
            puts session[:last_page]
        end
    end
    
    def show
        if !user_signed_in?
            redirect_to new_user_session_path
        end
    end
    
    private
    
        def delete_empty_chat
            if last_chat = Chat.find_by(id: session[:chat_id])
                last_chat.delete if last_chat.messages.count == 0
            end
        end
    
        def remove_notifications
            if last_chat = Chat.find_by(id: session[:chat_id])
                last_chat.read(current_user)
                session[:chat_id] = nil
            end
        end
    
end
