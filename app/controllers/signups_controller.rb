class SignupsController < ApplicationController


    def create

        # .new    : .save

        new_signup = Signup.new( signup_create_params )

        # code to asess

        if new_signup.save
            render json: new_signup.activity, status: :created
        else
            render json: { "errors": new_signup.errors.full_messages }, status: :unprocessable_entity
        end
    

        ### POST /signups
    
        # This route should create a new `Signup` that is associated with an
        # existing `Camper` and `Activity`. It should accept an object with the following
        # properties in the body of the request:
    
        # ```json
        # {
        # "time": 9,
        # "camper_id": 1,
        # "activity_id": 3
        # }
        # ```
    
        # If the `Signup` is created successfully, send back a response with the data
        # related to the `Activity`:
    
        # ```json
        # {
        # "id": 1,
        # "name": "Archery",
        # "difficulty": 2
        # }
        # ```
    
        # If the `Signup` is **not** created successfully, return the following JSON data,
        # along with the appropriate HTTP status code:
    
        # ```json
        # {
        # "errors": ["validation errors"]
        # }
        # ```
    end




    private


    def signup_create_params

        params.require(:signup).permit(:time,  :camper_id, :activity_id)
        # params.permit(:time,  :camper_id, :activity_id)

    end


end
