class AppointmentsController < ApplicationController

    def new
        @appointment = Appointment.new
        @appointment.build_tutor
    end

    def create
        @appointment = Appointment.new(appointment_params)
        if @appointment.save!
            redirect_to appointment_path(@appointment)
        else
            render :new
        end
    end



    def appointment_params
        params.require(:appointment).permit(:appointment_info, :tutor_id, tutor_attributes: [:SME])
    end
end
