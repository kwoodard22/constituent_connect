class RegistrationsController < Devise::RegistrationsController

  def new
    @user = User.new
    @user.office = Office.new
    render "welcome/new_office"
  end

  def new_user
    @user = User.new
    # @office = Office.new
    render "welcome/new_user"
  end

  private

  def sign_up_params
    if params[:user][:office_attributes]
      office = Office.create(name:params[:user][:office_attributes][:name])
      params[:user][:office_id] = office.id
    end
    params.require(:user).permit(:name, :office_id, :email, :password, :password_confirmation, :admin)
  end

end
