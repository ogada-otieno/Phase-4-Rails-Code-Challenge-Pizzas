class PizzasController < ApplicationController
    # GET /pizzas
    def index
        pizzas = Pizza.all
        # render json: pizzas, status: :ok
        render json: pizzas, status: :ok
    end

end
