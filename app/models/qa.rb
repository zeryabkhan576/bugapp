class Qa < ApplicationRecord 
    has_many :qa_pros
    has_mamy :bugs
    belongs_to :user
    belongs_to :manager
end