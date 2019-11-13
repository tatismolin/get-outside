class ActivityPlansController < ApplicationController

    def index
        activityPlans = ActivityPlan.all 
        render json: activityPlans, include: [:activity]
    end

    def show
        activityPlan = ActivityPlan.Find(params[:id])
        render json: activityPlan
    end

    def create
        activityPlan = ActivityPlan.create(plan_id: 1, activity_id: params[:activity_id])
    end

    def destroy
        activity = ActivityPlan.find(params[:id])
        activity.delete
    end

end
