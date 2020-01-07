class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

      
  def email_required?
    false
  end

  def email_changed?
    false
  end
	validates :username, uniqueness: true
  enum user_type:[:developer, :manager, :qa ] 
  has_many :developers 
  has_many :managers
  has_many :qas 
end
