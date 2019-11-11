class PlansController < ApplicationController

    def index
        plans = Plan.all 
        render json: plans, include: [:user]
    end

    def show
        plan = Plan.find(params[:id])
        render json: plan
    end

end
