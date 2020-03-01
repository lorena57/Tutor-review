class SessionsController < ApplicationController
    
    def welcome
    end

    def destroy
       session.delete(:student_id)
       redirect_to '/'
    end

    def new
    end

    def create
        student = Student.find_by(username: params[:student][:username])
            if student && student.authenticate(params[:student][:password])
                log_in student
                redirect_to student
            else
                flash[:error] = "Sorry, login info was incorrect. Please try again."
                redirect_to login_path
            end
    end

end