class DashboardsController < ApplicationController
    before_action :authenticate_user!
    
    def index
        @user = User.find(current_user.id)
        @pie_sex = Profile.child_request.group(:sex).count
        @bar_type_educator = Educator.group(:type_educator).count
    end
end