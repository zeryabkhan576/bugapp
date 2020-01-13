class Ability
    include CanCan::Ability
    
    def initialize(user)
      
        can :manage, :all if user.role = 0
        # end
        # can :create, :bug
        # can :read, :bug
        # can :delete, :bug
        # can :update, :bug do |bug|
        #     bug.try(:user) == user
        # can :read , Project if user.role = "qa"
       
       
        # can :read, :bug
        # can :update, :bug 
        # can :read , :Project if user.role = "developer"
        

    end
   
end
  
