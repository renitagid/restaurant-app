class RestaurantController < ApplicationController
    def index
        @restaurants = Restaurant.order(:name)
    end
    def show
        @restaurant = Restaurant.find(params[:id])
    end
    def new
        @restaurant = Restaurant.new
    end
    def create
        @restaurant = Restaurant.create!(restaurant_params)
        if @restaurant.valid?
            redirect_to '/'
        else
            redirect_to new_restaurant_path
        end
    end
    def edit
        @restaurant = Restaurant.find(params[:id])
    end
    def update
        @restaurant = Restaurant.find(params[:id])
        @restaurant.update!(restaurant_params)
        if @restaurant.valid?
            redirect_to restaurant_path(params[:id])
        else
            redirect_to new_restaurant_path
        end
    end
    def destroy
        @restaurant = Restaurant.find (params[:id])
        if @restaurant.destroy
            redirect_to '/'
        end
    end
    def filter
        # @mexican_restaurants = Restaurant.where (cuisine: "Mexican")
        # @chinese_restaurants = Restaurant.where (cuisine: "Chinese")
        @filter = Restaurant.where(cuisine: "Chinese")
    end

private
def restaurant_params
    params.require(:restaurant).permit(:name, :cuisine, :price_range, :description, :search)
end

end
