class Manager < ApplicationRecord 
    has_many :projects
    has_many :developers
    has_many :qas
    belongs_to :user
end