class Project < ApplicationRecord   
    has_many :dev_pros
    has_many :qa_pros
    has_many :bugs
    belongs_to :manager
end