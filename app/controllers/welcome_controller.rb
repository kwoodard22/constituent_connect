class WelcomeController < ApplicationController

  def landing
    if current_user
      if current_user.admin?
        redirect_to dashboard_path
      else
        redirect_to dashboard_path
      end
    end
  end

end
