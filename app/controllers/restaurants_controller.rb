class RestaurantsController < ApplicationController
    rescue_from ActiveRecord::RecordNotFound, with: :not_found_response_message
    # GET /restaurants
    def index
        restaurants = Restaurant.all
        render json: restaurants, status: :ok
    end

    # GET /restaurants/:id
    def show
        restaurant = Restaurant.find_by_id(params[:id])
        render json: restaurant, status: :ok 
    end

    # DELETE /restaurants/:id
    def destroy
        restaurant = Restaurant.find_by_id(params[:id])
        restaurant.destroy
        head :no_content
    end

    private

    def not_found_response_message
        render json: {error: "Restaurant not found"}, status: :not_found
    end
end
