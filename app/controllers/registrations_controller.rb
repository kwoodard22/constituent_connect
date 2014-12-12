class RegistrationsController < Devise::RegistrationsController

  def new
    @user = User.new
    # @office = Office.new
    render "welcome/new_office"
  end

   # GET /new_office
  def new_office
    build_resource({})
     @office = Office.new
    @validatable = devise_mapping.validatable?
    if @validatable
      @minimum_password_length = resource_class.password_length.min
    end
    # render "/new_office" --> I think this was defined in scope so it's unnecessary
  end

  # POST /resource
  def create
    build_resource(sign_up_params)

    resource_saved = resource.save
    yield resource if block_given?
    if resource_saved
      if resource.active_for_authentication?
        set_flash_message :notice, :signed_up if is_flashing_format?
        sign_up(resource_name, resource)
        respond_with resource, location: after_sign_up_path_for(resource)
      else
        set_flash_message :notice, :"signed_up_but_#{resource.inactive_message}" if is_flashing_format?
        expire_data_after_sign_in!
        respond_with resource, location: after_inactive_sign_up_path_for(resource)
      end
    else
      clean_up_passwords resource
      @validatable = devise_mapping.validatable?
      if @validatable
        @minimum_password_length = resource_class.password_length.min
      end
      respond_with resource
    end
  end

  def sign_up_params
    office = Office.create(name:params[:office_name])
    params[:user][:office_id] = office.id
    params.require(:user).permit(:name, :office_id, :email, :password, :password_confirmation)
  end


end