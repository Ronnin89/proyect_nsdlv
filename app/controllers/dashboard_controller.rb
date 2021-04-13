class DashboardsController < ApplicationController
    before_action :authenticate_authenticate!
    def index
        @educators = Educator.all
        @childrens = Child.all
        @educator = Educator.find([current_user.id])
        @executive = Executive.find([current_user.id])
    end

end