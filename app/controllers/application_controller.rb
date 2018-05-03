class ApplicationController < ActionController::Base
    include SessionsHelper

    private
    
      # Confirms a logged-in user.
      def logged_in_user
        unless current_user
          flash[:danger] = "Please log in."
          redirect_to login_url
        end
      end
    
       # Checks if user is already logged-in
      def already_logged_in?
        if current_user
          redirect_to root_path
        end
      end
    
end
