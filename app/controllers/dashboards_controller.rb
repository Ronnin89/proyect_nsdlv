class DashboardsController < ApplicationController
    before_action :authenticate_user!
    
    def index
        @user = User.find(current_user.id)

    end
    
    def child
        if(params[:q])
            @childs = Profile.where('type_profile = ? AND names LIKE ? OR last_names LIKE ?', 2, "%#{params[:q]}%", "%#{params[:q]}%")
        else
            @childs = Profile.where(type_profile: 2)
        end
    end

    def educator
        if(params[:q])
            @educators = Profile.where('type_profile = ? AND names LIKE ? OR last_names LIKE ?', 1, "%#{params[:q]}%", "%#{params[:q]}%")
        else
            @educators = Profile.where(type_profile: 1)
        end
    end
end