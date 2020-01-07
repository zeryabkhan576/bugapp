class Developer < ApplicationRecord 

    has_many :dev_bugs
    has_many :dev_pros
    belongs_to :manager
    belongs_to :user
    
end