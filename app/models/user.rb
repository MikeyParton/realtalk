class User < ApplicationRecord
  # Include default devise modules. Others available are:
  #:timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable, :confirmable, :lockable

  validates :name, presence: true    
    
  scope :confirmed, -> { where("confirmed_at IS NOT NULL") }
    
  def chats
      Chat.where("sender_id = ? OR recipient_id = ?", self.id, self.id)
  end
    
end