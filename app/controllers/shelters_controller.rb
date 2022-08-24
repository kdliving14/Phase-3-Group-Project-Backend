class ShelterController < ApplicationController

    #get all shelters
    get '/shelters' do
        shelter = Shelter.all.order(:name)
        shelter.to_json
    end

    #get a specific shelter
    get '/shelters/:id' do
        shelter = Shelter.find(params[:id])
        shelter.to_json
    end

    #get a specific shelter's parents
    get '/shelters/:id/parents' do
        shelter = Shelter.find(params[:id]).parents
        shelter.to_json
    end

    #get a specific shelter's pets
    get '/shelters/:id/pets' do
        shelter = Shelter.find(params[:id]).pets
        shelter.to_json
    end

end