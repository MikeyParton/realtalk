class PagesController < ApplicationController  
    
    def chats
        redirect_to new_user_session_path unless user_signed_in?
        @users = User.confirmed
    end
end