class RestaurantPizzasController < ApplicationController
    rescue_from ActiveRecord::RecordInvalid, with: :render_unprocessable_entity

    # POST /restaurant_pizzas
    def create
        restaurant_pizza = RestaurantPizza.create(restaurant_pizza_params)
        render json: restaurant_pizza.pizza, status: :created
    end

    private

    def restaurant_pizza_params
        params.permit(:price, :pizza_id, :restaurant_id)
    end

    def render_unprocessable_entity(invalid)
        render json: { errors: invalid.record.errors }, status: :unprocessable_entity
    end
end
