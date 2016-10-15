class Message < ApplicationRecord
    belongs_to :user, foreign_key: :user_id
    belongs_to :chat
    
    after_create_commit {MessageBroadcastJob.perform_now self}
    
    validates_presence_of :text, :chat_id, :user_id
    
    scope :unread, -> (user_id) do
        where("messages.read =? AND messages.user_id !=?", false, user_id)
  	end
    
end