class User < ApplicationRecord
  # Include default devise modules. Others available are:
  #:timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable, :confirmable, :lockable
    
  scope :confirmed, -> { where("confirmed_at IS NOT NULL") }    
end
