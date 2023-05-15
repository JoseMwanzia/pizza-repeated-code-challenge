class RestaurantsController < ApplicationController
rescue_from ActiveRecord::RecordInvalid, with: :render_unprocessable_entity
rescue_from ActiveRecord::RecordNotFound, with: :render_not_found

    # GET /restaurants
    def index 
        restaurants = Restaurant.all
        render json: restaurants, status: :ok
    end

    # GET /restaurant/:id
    def show 
        render json: Restaurant.find(params[:id]), serializer: CustomRestaurantsSerializer
    end

    # DELETE /restaurants/:id
    def destroy
        restaurant = Restaurant.find(params[:id])
        restaurant.destroy
        head :no_content
    end

    private 

    def render_unprocessable_entity(exception)
        render json: {errors: exception.record.errors.full_messages}, status: :unprocessable_entity
    end

    def render_not_found
        render json: {error: "Restaurant not found"}, status: :not_found
    end
end
