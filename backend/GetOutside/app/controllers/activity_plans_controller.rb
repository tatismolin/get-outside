class ActivityPlansController < ApplicationController

    def index
        activityPlans = ActivityPlan.all 
        render json: activityPlans, include: [:activity]
    end

    def show
        activityPlan = ActivityPlan.Find(params[:id])
        render json: activityPlan
    end
    
end
