class ParentsController < ApplicationController

   #get all foster parents
    get '/parents' do
        parents = Parent.all
        parents.to_json
    end

    #get specific foster parent
    get '/parents/:id' do
        parent = Parent.find(params[:id])
        parent.to_json
    end

    #create new foster parent
    post '/parents' do
        parent = Parent.create(parent_params)
        parent.to_json
    end

    #update foster parent data
    patch '/parents/:id' do
        parent = Parent.find(params[:id])
        parent.update(parent_params)
        parent.to_json
    end

    #delete foster parent
    delete '/parents/:id' do
        parent = Parent.find(params[:id])
        parent.destroy
        "Seleted foster parent data deleted"
    end

    def parent_params
        {
            image_url: params[:image_url], name: params[:name], service_years: params[:service_years],
            preferences: params[:preferences], budget: params[:budget], hours_at_home: params[:hours_at_home],
            living_situation: params[:living_situation], current_num_pets: params[:current_num_pets],
            pet_confiscation?: params[:pet_confiscation?], vet_provider: params[:vet_provider],
            willing_6m_follow_up?: params[:willing_6m_follow_up?], give_pet_back?: params[:give_pet_back?],
            donated_amt: params[:donated_amt], reoccuring?: params[:reoccuring?], gift?: params[:gift?],
            gift_in_honor_of: params[:gift_in_honor_of]
        }
    end
end
