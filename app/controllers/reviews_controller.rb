class ReviewsController < ApplicationController

    def new
        @appointment = Appointment.find_by_id(params[:id])
    end

    def index
        
    end
end
