class RestaurantPizzasController < ApplicationController
    # turns on request forgery protection and checks for the CSRF token in non-GET and non-HEAD requests
    # if the application does not specify a strategy, it will default to nulling the session
    protect_from_forgery with: :null_session
    
    rescue_from ActiveRecord::RecordInvalid, with: :render_unprocessable_entity

    # POST /restaurant_pizzas
    def create
        restaurant_pizza = RestaurantPizza.create(restaurant_pizza_params)
        render json: restaurant_pizza, status: :created
    end

    private

    def restaurant_pizza_params
        params.permit(:price, :pizza_id, :restaurant_id)
    end

    def render_unprocessable_entity(invalid)
        render json: { errors: invalid.record.errors }, status: :unprocessable_entity
    end
end
