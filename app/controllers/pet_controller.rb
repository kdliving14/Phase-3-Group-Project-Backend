class PetController < ApplicationController
    set :default_content_type, 'application/json'
    
    get '/pets' do
      pets = Pet.all.order(:age)
      pets.to_json
    end

    get '/pets/:id' do
        pet = Pet.find(params[:id])
        pet.to_json
      end

    post '/pets' do
        pets = Pet.create(
        shelter_id: params[:shelter_id],
        parent_id: 0,
        name: params[:name],
        image_url: params[:image_url],
        species: params[:species],
        hunger: 5,
        thirst: 5,
        fun: 5,
        hygiene: 5,
        exhaustion: 5,
        temperament: params[:temperament],
        recommendations: params[:recommendations],
        adopt_status: params[:adopt_status],
        medical: params[:medical],
        age: params[:age],
        gender: params[:gender],
        breed: params[:breed],
        price: 0
        )
        pets.to_json
    end

    patch '/pets/:id' do
        pet = Pet.find(params[:id])
        pet.update(
            hunger: params[:hunger],
            thirst: params[:thirst],
            fun: params[:fun],
            hygiene: params[:hygiene],
            exhaustion: params[:exhaustion]
        )
        pet.to_json
    end

    delete '/pets/:id' do
        pet = Pet.find(params[:id])
        pet.destroy
        pet.to_json
        "This Pet has been deleted."
    end
        
  end
