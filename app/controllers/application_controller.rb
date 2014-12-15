class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  before_action :configure_permitted_parameters, if: :devise_controller?

  def after_sign_in_path_for(resource)
    dashboard_path
  end
  
  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.for(:new_office) { |u| u.permit(:name, :email, :password, :password_confirmation, :office_attributes => :name) }
    devise_parameter_sanitizer.for(:create) { |u| u.permit(:name, :email, :password, :password_confirmation, :office_attributes => :name) }
    
  end

end
