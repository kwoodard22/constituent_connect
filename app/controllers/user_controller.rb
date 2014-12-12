class UserController < ApplicationController
  
  #### Lists unapproved users (Require Admin Tutorial)
  def index
    if params[:approved] == "false"
      @users = User.find_all_by_approved(false)
    else
      @users = User.all
    end
  end
  #####

  def create
    # Create the user from params
    @user = User.new(params[:user])
    if @user.save
      # Deliver the welcome email
      UserNotifier.welcome_email(@user).deliver
      redirect_to(@user, :notice => 'Signed up successfully!')
    else
      render :action => 'new'
    end
  end

end
