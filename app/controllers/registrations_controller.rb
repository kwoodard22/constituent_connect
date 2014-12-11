class RegistrationsController < Devise::RegistrationsController

  def new_staff
    build_resource({})
    @validatable = devise_mapping.validatable?
    if @validatable 
      @minimum_password_length = resource_class.password_length.min
    end
    render "welcome/add_staff"
  end

  def new
    @user = User.new
    render "welcome/signup_page"
  end

  def create
    @user

end