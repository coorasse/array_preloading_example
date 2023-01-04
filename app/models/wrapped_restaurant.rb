# This class is never really persisted on the database.
# It's used to take advantage of preloading and avoid N+1 queries.
# It wraps a Restaurant object.
class WrappedRestaurant < ApplicationRecord
  attr_reader :restaurant

  has_many :customers, foreign_key: :external_restaurant_code, primary_key: :code

  def initialize(restaurant)
    @restaurant = restaurant
    super(code: restaurant.code)
  end

  def self.wrap(restaurants, preload: [])
    restaurants.map { |restaurant| WrappedRestaurant.new(restaurant) }.tap do |wrapped_restaurants|
      ActiveRecord::Associations::Preloader.new(records: wrapped_restaurants, associations: preload).call if preload.any?
    end
  end

  def readonly? = true

  def respond_to_missing?(method, include_private = false)
    @restaurant.respond_to?(method, include_private)
  end

  # delegate all missing methods to the original object
  def method_missing(method, *args, &)
    @restaurant.send(method, *args, &)
  end
end
