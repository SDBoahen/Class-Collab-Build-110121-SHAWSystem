class WoobliesController < ApplicationController


    # GET to /wooblies
    def index
        render json: Woobly.all


        ### GET /wooblies
        # Return JSON data in the format below:

        # ```json
        # [
        #     {
        #         "name": "Woobly",
        #         "hometown": "The Bronx"
        #     },
        #     {
        #         "name": "Joobly",
        #         "hometown": "Manhattan"
        #     },
        #     {
        #         "name": "WaWaWa",
        #         "hometown": "Republica Dominicana"
        #     },
        #     {
        #         "name": "Mooply",
        #         "hometown": "The Abyss"
        #     }
        # ]
        # ```
    end


    # GET to /wooblies/:id
    def show


        woobly_to_find = Woobly.find_by( id: params[:id] )


        if woobly_to_find #Truthy

            render json: woobly_to_find, serializer: WooblyShowSerializer

        else #Falsey

            render json: { "error": "Woobly not found 🌾😕🌾" }, status: :not_found

        end

        
        # If the Woobly exists, return JSON data in the format below:

        # {
        #   "id": 1,
        #   "name": "Woobly",
        #   "hometown": "Austin",
        #   "snacks": [
        #     {
        #         "id": 1,
        #         "name": "Ice Cream",
        #         "ingredients": "Ice, Cream, Happiness"
        #     },
        #     {
        #       "id": 2,
        #       "name": "Chips",
        #       "ingredients": "Potatoes, Salt"
        #     }
        #   ]
        # }
        # If the Woobly does not exist, return the following JSON data, along with the appropriate HTTP status code:
        
        # {
        #   "error": "Woobly not found 🌾😕🌾"
        # }

    end


    # POST to /wooblies
    def create

        new_woobly = Woobly.new( woobly_create_params ) 

        if new_woobly.save
            render json: new_woobly, serializer: WooblyCreateSerializer
        else
            render json: { "errors": new_woobly.errors.full_messages }, status: :unprocessable_entity
        end
        

        # This route should create a new Woobly. It should accept an object with the following properties in the body of the request:
    
        # {
        #     "name": "Confoobly",
        #     "hometown": "Florida"
        # }
        # If the Woobly is created successfully, send back a response with the data related to that Woobly:
    
        # {
        #     "id": 5,
        #     "name": "Confoobly",
        #     "hometown": "Florida"
        # }
        # If the Woobly is not created successfully, return the following JSON data, along with the appropriate HTTP status code:
    
        # {
        #   "errors": ["validation errors"]
        # }

    end


    # DELETE to /wooblies/:id
    def destroy

        woobly_to_find = Woobly.find_by( id: params[:id] )


        if woobly_to_find #Truthy

            woobly_to_find.destroy

            head :no_content
            # render json: {}, status: :no_content 

        else #Falsey

            render json: { "error": "Woobly not found 🌾🙃🌾" }, status: :not_found

        end
        

        # If the Woobly decides to Retire, check if they exist, and then they should be removed from the database, along with any WooblySnacks that are associated with it (a WooblySnack belongs to a Woobly, so you need to delete the WooblySnacks before the Woobly can be deleted).
    
        # After Retiring that Woobly, return an empty response body, along with the appropriate HTTP status code.
    
        # If the Woobly does not exist, return the following JSON data, along with the appropriate HTTP status code:
    
        # {
        # "error": "Woobly not found 🌾🙃🌾"
        # }


    end




    private


    def woobly_create_params

        params.require(:woobly).permit( 
            :name,
            :hometown
        )

    end



    




end
