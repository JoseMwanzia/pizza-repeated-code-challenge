class RestaurantPizzasController < ApplicationController
rescue_from ActiveRecord::RecordInvalid, with: :render_response_invalid

    # POST /restaurant_pizza
    def create
        restaurant_pizza = RestaurantPizza.create!(restaurant_pizzas_params)
        render json: restaurant_pizza, status: :created
    end

    # GET /restaurants_pizzas
    def index
        restaurant_pizzas = RestaurantPizza.all
        render json: restaurant_pizzas, include: ['pizzas.ingredient']
    end
    private

    def restaurant_pizzas_params
        params.permit(:price, :pizza_id, :restaurant_id)
    end

    def render_response_invalid(invalid)
        render json: {errors: invalid.record.errors.full_messages}, status: :unprocessable_entity
    end
end
