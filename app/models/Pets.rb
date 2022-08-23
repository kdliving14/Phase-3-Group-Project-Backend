class Pet < ActiveRecord::Base
    belongs_to :shelter
    belongs_to :parent
end
