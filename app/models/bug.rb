class Bug < ApplicationRecord

    validates :name, uniqueness: true
    enum bug_type:[:feature, :bug,] 
    enum bug_status:[:newbug, :started, :completed ]   

    has_many :dev_bugs
    belongs_to :project
    belongs_to :qa
   

end