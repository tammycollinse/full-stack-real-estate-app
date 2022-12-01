class BrokersController < ApplicationController

    def index
        brokers = Broker.all
        render json: brokers
    end

    def show
        broker = Broker.find_by(id: params[:id])
        render json: broker 
    end
end
