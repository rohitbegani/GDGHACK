class ApplicationController < ActionController::Base
  protect_from_forgery

  def user_admin
 	  unless current_user and current_user.admin?
		redirect_to home_path, :alert => "Restricted area" 
	  end
	end
	
end
