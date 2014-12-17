class WelcomeController < ApplicationController

  def landing
    if current_user
        redirect_to dashboard_path
    end
  end

end
