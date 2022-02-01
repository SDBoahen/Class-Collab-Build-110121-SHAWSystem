class RestaurantsController < ApplicationController

    # GET /restaurants
  def index
   
   render json: Restaurant.all 
      
  end    
  # GET restaurants/:id
    def show
      restaurant = Restaurant.find_by(id: params[:id])
          if restaurant
              render json: restaurant, serializer: RestaurantShowSerializer
          else
              render json: {"error": "Restaurant not found"}, status: :not_found
      end
   end 
  
   # DELETE /restaurants/:id 
   def destroy
       restaurant_destroy = Restaurant.find_by(id: params[:id])
       if restaurant_destroy
           restaurant_destroy.restaurant_pizzas.destroy_all
           restaurant_destroy.destroy 
          #  render json: {}, body:
      else
          render json: { "error": "Restaurant not found"}, status: :not_found
      end
    end
  
  end
  