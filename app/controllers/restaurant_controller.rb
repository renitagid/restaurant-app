class RestaurantController < ApplicationController
    def index
        @restaurants = Restaurant.all
    end
    def show
        @restaurant = Restaurant.find(params[:id])
    end
    def new
        @restaurant = Restaurant.new
    end
    def create
        @restaurant = Restaurant.create(restaurant_params)
    end
    def restaurant_params
        params.require(:restaurant).permit(:name, :cuisine, :price_range)
    end

end
