class WooblySnacksController < ApplicationController


    def create

        new_woobly_snack = WooblySnack.new( woobly_snacks_create_params ) 

        if new_woobly_snack.save
            render json: new_woobly_snack  #, serializer: WooblySnackCreateSerializer
        else
            render json: { "errors": new_woobly_snack.errors.full_messages }, status: :unprocessable_entity
        end
        
        
        ### POST /wooblie_snacks
    
        # This route should create a new `WooblySnack` that is associated with an
        # existing `Snack` and `Woobly`. It should accept an object with the following
        # properties in the body of the request:
    
        # ```json
        # {
        # "price": 5.55,
        # "special_additional_ingredients": "Love💛✨",
        # "marked_as_healthy": true,
        # "snack_id": 1,  // (or any valid :id)
        # "wooblie_id": 5 // (or any valid :id)
        # }
        # ```
    
        # If the `WooblySnack` is created successfully, send back a response with the data
        # related to the `Snack`:
    
        # ```json
        # {
        # "name": "Ice Cream",
        # "ingredients": "Ice, Cream, Happiness",
        # "being_sold_for": 5.55 
        # }
        # ```
    
        # If the `WooblySnack` is **not** created successfully, return the following
        # JSON data, along with the appropriate HTTP status code:
    
        # ```json
        # {
        # "errors": ["validation errors"]
        # }
        # ```


    end


    ### DELETE to /wooby_snacks/:id
    def destroy

        woobly_snack_to_find = WooblySnack.find_by( id: params[:id] )


        if woobly_snack_to_find #Truthy

            woobly_snack_to_find.destroy

            head :no_content
            # render json: {}, status: :no_content 

        else #Falsey

            render json: { "error": "WooblySnack Not Found :(" }, status: :not_found

            # render json: { "error": "#{} doesn't sell [Snack] Anymore 🥣😿" }, status: :not_found
    
        end
    
            # If the `WooblySnack` exists, it should be removed from the database
    
            # After deleting the `WooblySnack`, return an _empty_ response body, along with the
            # appropriate HTTP status code.
    
            # If the `WooblySnack` does not exist, return the following JSON data, along with
            # the appropriate HTTP status code:
    
            # ```json
            # {
            # "error": "[Woobly] doesn't sell [Snack] Anymore 🥣😿"
            # }
            # ```

    end





    private


    def woobly_snacks_create_params

        params.require(:woobly_snack).permit( 
            :price,
            :special_additional_ingredients,
            :marked_as_healthy,

            :snack_id,
            :woobly_id
        )

        # params.permit( 
        #     :price,
        #     :special_additional_ingredients,
        #     :marked_as_healthy,

        #     :snack_id,
        #     :woobly_id
        # )

    end


end
