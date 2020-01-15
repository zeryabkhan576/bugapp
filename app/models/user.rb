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
      # :with_role, lambda { |role| {:conditions => "roles_mask & #{2**ROLES.index(role.to_s)} > 0"} }
      # roles = %w[manager developer qa]

  def roles=(roles)
    roles = [*roles].map { |r| r.to_sym }
    self.roles_mask = (roles & ROLES).map { |r| 2**ROLES.index(r) }.inject(0, :+)
  end
  
  def roles
    ROLES.reject do |r|
      ((roles_mask.to_i || 0) & 2**ROLES.index(r)).zero?
    end
  end
  
  def role?(role)
    User.roles.include? role
  end
 
  # def role_symbols
  #   roles.map(&:to_sym)
  # end

end
