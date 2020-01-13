class ApplicationController < ActionController::Base

    before_action :configure_permitted_parameters, if:  :devise_controller?
   
   
    rescue_from CanCan::AccessDenied do |exception|
      flash[:error] = "Access denied."
      redirect_to root_url
    end


protected

  def configure_permitted_parameters

    devise_parameter_sanitizer.permit(:sign_up, keys: [ { roles: [] }, :username, :email ])

  end
  
  def after_sign_in_path_for(resource)
    stored_location_for(resource) || users_path
  end
end
