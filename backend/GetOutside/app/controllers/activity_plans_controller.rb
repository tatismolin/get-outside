class ActivityPlansController < ApplicationController

    def index
        activityPlans = activityPlan.all 
        render json: activityPlans
    end

end
