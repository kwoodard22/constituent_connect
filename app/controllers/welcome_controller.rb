class WelcomeController < ApplicationController

  def landing
    if user_signed_in?
      if current_user.admin?
        render 'admin'
      else
        render 'staff'
      end
    end
  end

end
