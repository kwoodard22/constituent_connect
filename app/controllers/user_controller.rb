class UserController < ApplicationController

  def user_dashboard
    @user = current_user
    @calls = Call.all
  end

end
