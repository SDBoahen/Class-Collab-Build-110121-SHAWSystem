class SnacksController < ApplicationController


    ### GET to /snacks
    def index

        render json: Snack.all

        # Return JSON data in the format below:

        # ```json
        # [
        #     {
        #     "id": 1,
        #     "name": "Ice Cream",
        #     "ingredients": "Ice, Cream, Happiness"
        #     },
        #     {
        #     "id": 2,
        #     "name": "Chips",
        #     "ingredients": "Potatoes, Salt"
        #     }
        #     { 
        #     "id": 3,
        #     "name": "Grapes",
        #     "ingredients": "...Grapes?"
        #     }
        # ]
        # ```

    end


    ### GET to /snacks/:id
    def show

        snack_to_find = Snack.find_by( id: params[:id] )


        if snack_to_find #Truthy

            render json: snack_to_find, serializer: SnackShowSerializer

        else #Falsey

            render json: { "error": "Snack not found 🍽🙃🥣" }, status: :not_found

        end


        # If the Snack exists, return JSON data in the format below:

        # {
        # "id": 1,
        # "name": "Ice Cream",
        # "ingredients": "Ice, Cream, Happiness",
        # "wooblies": [
        #     {
        #         "id": 1,
        #         "name": "Woobly",
        #         "hometown": "The Bronx"
        #     }
        # ]
        # }
        # If the Snack does not exist, return the following JSON data, along with the appropriate HTTP status code:

        # {
        # "error": "Snack not found 🍽🙃🥣"
        # }


    end


    def create

        new_snack = Snack.new( snacks_create_params ) 

        if new_snack.save
            render json: new_snack
        else
            render json: { "errors": new_snack.errors.full_messages }, status: :unprocessable_entity
        end


        # This route should create a new `Snack`. It should accept an object with the following
        # properties in the body of the request:

        # ```json
        # {
        #     "name": "Pinapples",
        #     "ingredients": "Pine, Apples, Magic✨"
        # }
        # ```

        # If the `Snack` is created successfully, send back a response with the data
        # related to that `Snack`:

        # ```json
        # {
        #     "id": 4,
        #     "name": "Pinapples",
        #     "ingredients": "Pine, Apples, Magic✨"
        # }
        # ```

        # If the `Snack` is **not** created successfully, return the following
        # JSON data, along with the appropriate HTTP status code:

        # ```json
        # {
        # "errors": ["validation errors"]
        # }
        # ```


    end



    private


    def snacks_create_params

        params.require(:snack).permit( 
            :name,
            :ingredients
        )

    end




end
