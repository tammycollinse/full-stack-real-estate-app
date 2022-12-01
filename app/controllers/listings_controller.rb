class ListingsController < ApplicationController

    def index
        listings = Listing.all  #the index portion of the controller is our get request
        render json: listings    #once this is done in the controller, it needs to be set up in our routes
    end

    def show
        listing = Listing.find_by(id: params[:id])
        render json: listing
    end
end
