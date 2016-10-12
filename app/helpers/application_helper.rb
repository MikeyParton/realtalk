module ApplicationHelper

    def other_user(chat)
        current_user.id == chat.sender.id ?  chat.recipient : chat.sender
    end

end