class CampersController < ApplicationController


    # GET to /campers 
    def index

        campers = Camper.all

        render json: campers

        # render json: Camper.all
        

        ### GET /campers
        # Return JSON data in the format below. **Note**: you should return a JSON
        # response in this format, without any additional nested data related to each
        # camper.
    
        # ```json
        # [
            # {
            #     "id": 1,
            #     "name": "Caitlin",
            #     "age": 8
            # },
            # {
            #     "id": 2,
            #     "name": "Lizzie",
            #     "age": 9
            # }
        # ]
        # ```
    end


    # GET to /campers/:id
    def show

        
        camper = Camper.find_by( id: params[:id] )
        

        if camper # camper exists! :)

            render json: camper, serializer: CamperShowSerializer

        else

            render json: { "error": "Camper not found" }, status: :not_found

        end


        ### GET /campers/:id
    
        # If the `Camper` exists, return JSON data in the format below. **Note**: you will
        # need to serialize the data for this response differently than for the
        # `GET /campers` route. Make sure to include an array of activities for each
        # camper.
    
        # ```json
        # {
        #     "id": 1,
        #     "name": "Caitlin",
        #     "age": 8,
        #     "activities": [
        #         {
        #         "id": 1,
        #         "name": "Archery",
        #         "difficulty": 2
        #         },
        #         {
        #         "id": 2,
        #         "name": "Swimming",
        #         "difficulty": 3
        #         }
        #     ]
        # }
        # ```
    
        # If the `Camper` does not exist, return the following JSON data, along with
        # the appropriate HTTP status code:
    
        # ```json
        # {
        # "error": "Camper not found"
        # }
        # ```


    end


    # POST to /campers
    def create
        
        # .create : .valid?

            # new_camper = Camper.create( camper_create_params )

            # if new_camper.valid?
            #     render json: new_camper
            # else
            #     render json: { "errors": new_camper.errors.full_messages }, status: :unprocessable_entity
            # end


        # .new    : .save

            new_camper = Camper.new( camper_create_params )

            # code to asess

            if new_camper.save
                render json: new_camper
            else
                render json: { "errors": new_camper.errors.full_messages }, status: :unprocessable_entity
            end


        ### POST /campers
    
        # This route should create a new `Camper`. It should accept an object with the
        # following properties in the body of the request:
    
        # ```json
        # {
        #   "name": "Zoe",
        #   "age": 11
        # }
        # ```
    
        # If the `Camper` is created successfully, send back a response with the new
        # `Camper`:
    
        # ```json
        # {
        #   "id": 2,
        #   "name": "Zoe",
        #   "age": 11
        # }
        # ```
    
        # If the `Camper` is **not** created successfully, return the following JSON data,
        # along with the appropriate HTTP status code:
    
        # ```json
        # {
        #   "errors": ["validation errors"]
        # }
        # ```


    end




    private


    def camper_create_params

        params.require(:camper).permit(:name, :age)
        # params.permit(:name, :age)

        # byebug

    end


end
