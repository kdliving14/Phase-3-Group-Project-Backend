class Parent < ActiveRecord::Base

    has_many :Pets
    has_many :shelters, through: :Pets

end
