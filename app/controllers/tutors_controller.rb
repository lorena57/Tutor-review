class TutorsController < ApplicationController
      before_action :redirect_if_not_logged_in

      def index
          @tutors = Tutor.all
      end
end
