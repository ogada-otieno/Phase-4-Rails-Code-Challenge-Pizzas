class RestaurantsController < ApplicationController
    # protect_from_forgery with: :null_session
    rescue_from ActiveRecord::RecordNotFound, with: :not_found_response
    # GET /restaurants
    def index
        restaurants = Restaurant.all
        render json: restaurants, status: :ok
    end

    # GET /restaurants/:id
    def show
        restaurant = find_restaurant
        render json: restaurant, status: :ok 
    end

    # DELETE /restaurants/:id
    def destroy
        restaurant = find_restaurant
        restaurant.destroy
        head :no_content
    end

    private

    def find_restaurant
        Restaurant.find(params[:id])
    end

    def not_found_response
        render json: {error: "Restaurant not found"}, status: :not_found
    end
end
