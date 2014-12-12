class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  

  ####### NOT SURE WHY I HAVE THE FOLLOWING: ######
  # before_action :configure_permitted_parameters, if: :devise_controller?

  # protected

  # def configure_permitted_parameters
  #   devise_parameter_sanitizer.for(:new_office) << :name, :admin, :office_id, :approved
  #   devise_parameter_sanitizer.for(:new_user) << :name, :admin, :office_id, :approved
  #   devise_parameter_sanitizer.for(:update) << :name, :admin, :office_id, :approved
  # end

end
