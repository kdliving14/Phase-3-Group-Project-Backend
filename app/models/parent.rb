class Parent < ActiveRecord::Base

    has_many :pets
    has_many :shelters, through: :pets

end