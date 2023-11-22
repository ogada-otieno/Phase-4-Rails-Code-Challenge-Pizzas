class PizzasController < ApplicationController
    # GET /pizzas
    def index
        all_pizzas = Pizza
        @pagy, @pizzas = pagy(all_pizzas, items: 5)
        render json: @pizzas, status: :ok
    end

end
