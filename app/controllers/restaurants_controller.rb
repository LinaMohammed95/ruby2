class RestaurantsController < ApplicationController
  def index
    @restaurant = Restaurant.all
    @food = Food.all
    @dessert = Dessert.all
  end
end
