class Shelter < ActiveRecord::Base
    has_many :Pets
    has_many :parents, through: :Pets
end
