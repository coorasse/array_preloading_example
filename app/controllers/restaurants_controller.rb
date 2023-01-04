class RestaurantsController < ApplicationController
  def index
    @restaurants = Restaurant.from_api

  end

  def index2
    @restaurants = Restaurant.from_api
    @customers = Customer.where(external_restaurant_code: @restaurants.map(&:code)).group_by(&:external_restaurant_code)
  end

  def index3
    @restaurants = WrappedRestaurant.wrap(Restaurant.from_api, preload: [:customers])
  end
end
