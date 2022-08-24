class Shelter < ActiveRecord::Base
    has_many :pets
    has_many :parents, through: :pets
end
