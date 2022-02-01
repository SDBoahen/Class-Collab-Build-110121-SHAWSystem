class RestaurantPizzasController < ApplicationController


    def index
        rest_pizza = RestaurantPizza.all
        render json: rest_pizza
    end
    
    
def create
    rest_pizza = RestaurantPizza.create(rest_pizza_params)

if rest_pizza.valid?
    render json: rest_pizza,  status: :created
 else
    render json: {
        "errors": ["validation errors"]
      }, status: :unprocessable_entity
end
 end 







  private



  def rest_pizza_params
    params.permit(:price, :pizza_id, :restaurant_id)
  end



end
