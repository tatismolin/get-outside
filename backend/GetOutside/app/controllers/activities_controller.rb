class ActivitiesController < ApplicationController
    before_action :find_activity, only: [:show, :update, :destroy]

    def index
        activities = Activity.all 
        render json: activities
    end

    def show
        render json: @activity
    end

    def create
        activity = Activity.create(allowed_params)
    end

    def update
        @activity.update(allowed_params)
    end

    def destroy
        @activity.delete
    end


    private

    def find_activity
        @activity = Activity.find(params[:id])
    end

    def allowed_params
        params.permit(:name, :description, :photo, :temperature)
    end

end
