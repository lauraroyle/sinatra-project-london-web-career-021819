class RestaurantsController < ApplicationController

  get '/restaurants/new' do
    erb :'/restaurants/new'
  end

  post '/restaurants' do
    @new_restaurant = Restaurant.create(params)

    redirect to "/restaurants/#{@new_restaurant.id}"
  end

  get '/restaurants' do
    @restaurants = Restaurant.all

    erb :'/restaurants/index'
  end

  get '/restaurants/:id' do
    @restaurant = Restaurant.find_by(params[:id])

    erb :'/restaurants/show'
  end

end
