class UsersController < ApplicationController

    
    # GET to /users
    def index
        render json: User.all
    end


end
