class ActivitiesController < ApplicationController


    # POST to /activities
    def index

        render json: Activity.all

        ### GET /activities
    
        # Return JSON data in the format below:
    
        # ```json
        # [
            # {
            #     "id": 1,
            #     "name": "Archery",
            #     "difficulty": 2
            # },
            # {
            #     "id": 2,
            #     "name": "Swimming",
            #     "difficulty": 3
            # }
        # ]
        # ```
    end


    # DELETE to /activities/:id
    def destroy

        activity_to_destroy = Activity.find_by( id: params[:id] )

        
        if activity_to_destroy
            # Destroying All Related Data

            # activity_to_destroy.signups.destroy_all

            # activity_to_destroy.signups.each do |each_s| 
            #     each_s.destroy
            #     puts " deleted a signup with id: #{each_s.id}"
            # end

            # Just this for  dependent: :destory
            activity_to_destroy.destroy

            # render json: { message: "Delete Successful! :)" }, status: :ok
            # render json: { }, status: :no_content
            head :no_content
        else
            render json: { "error": "Activity not found" }, status: :not_found
        end


        ### DELETE /activities/:id
    
        # If the `Activity` exists, it should be removed from the database, along with
        # any `Signup`s that are associated with it (a `Signup` belongs
        # to an `Activity`, so you need to delete the `Signup`s before the
        # `Activity` can be deleted).
    
        # After deleting the `Activity`, return an _empty_ response body, along with the
        # appropriate HTTP status code.
    
        # If the `Activity` does not exist, return the following JSON data, along with
        # the appropriate HTTP status code:
    
        # ```json
        # {
        # "error": "Activity not found"
        # }
        # ```


    end


end
