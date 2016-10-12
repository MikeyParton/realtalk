class Message < ApplicationRecord
    belongs_to :user, foreign_key: :user_id
    belongs_to :chat
    
    validates_presence_of :text, :chat_id, :user_id
end
