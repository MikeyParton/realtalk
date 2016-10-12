class Chat < ApplicationRecord
    belongs_to :sender, foreign_key: :sender_id, class_name: :User
    belongs_to :recipient, foreign_key: :recipient_id, class_name: :User
    has_many :messages, dependent: :destroy 

    validates_presence_of :sender_id, :recipient_id
    validates_uniqueness_of :sender_id, :scope => :recipient_id
    
    scope :between, -> (sender_id,recipient_id) do
        where("(chats.sender_id = :sender AND chats.recipient_id = :receiver)
                OR (chats.sender_id = :receiver AND chats.recipient_id = :sender)",
                sender: sender_id, receiver: recipient_id
            )
    end
end