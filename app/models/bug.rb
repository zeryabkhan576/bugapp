class Bug < ApplicationRecord

    validates :name, uniqueness: true
    enum bug_type:[:feature, :bug,] 
    enum bug_status:[:newbug, :started, :completed ]   

   
    belongs_to :user
    belongs_to :project
    
end