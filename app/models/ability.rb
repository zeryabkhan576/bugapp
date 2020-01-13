class Ability
    include CanCan::Ability
    
    def initialize(user)
      
        can :manage, :all if user.role =="developer"
        
        # can :create, :bug
        # can :read, :bug
        # can :delete, :bugdo |bug|
        #     bug.try(:user) == user
        # can :update, :bug do |bug|
        #     bug.try(:user) == user
        # can :read , Project if user.role = "qa"
       
       
        # can :read, :bug
        # can :update, :bug 
        # can :read , :Project if user.role == "developer"
        

    end
   
end
  
