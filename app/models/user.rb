class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

      
  def email_required?
    true
  end

  def email_changed?
    false
  end
  validates :username, uniqueness: true
  
  enum role:[:developer, :manager, :qa ] 

  has_many :user_projects
  has_many :projects, through: :user_projects
  has_many :bugs
  

end
