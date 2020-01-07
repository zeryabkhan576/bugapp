class DevBug < ApplicationRecord 
    belongs_to :developer
    belongs_to :bug
end