class WelcomeController < ApplicationController

  def landing
    if user_signed_in?
      if current_user.admin?
        render 'admin'
      else
        render 'user'
      end
    end
  end

end
