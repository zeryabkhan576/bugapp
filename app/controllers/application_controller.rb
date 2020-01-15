class ApplicationController < ActionController::Base

    before_action :configure_permitted_parameters, if:  :devise_controller?
   
    # protect_from_forgery with: exception
    # check_authorization

    rescue_from CanCan::AccessDenied do |exception|
      flash[:error] = "Access denied."
      redirect_to root_url
    end


protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [ :role, :username, :email ])
  end
  
  def after_sign_in_path_for(resource)
    users_path
  end

end
