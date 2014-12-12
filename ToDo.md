TO DO
======

--> registrations_controller.rb
    - DO I NEED TO SANITIZE THEM HERE OR AS I HAVE THEM IN APPLICATION_CONTROLLER?
    def sign_up_params
    devise_parameter_sanitizer.sanitize(:sign_up)
  end
  
--> admin_mailer.rb
    - NEED TO FIND CORRECT SYNTAX FOR ADMIN
      mail(to: @office.users.where(admin: true).email, ...

--> user.rb
    - NEED TO CONFIRM ADMIN EMAIL IS DELIVERED UPON NEW USER SIGN UP
    - DOCS: https://github.com/plataformatec/devise/wiki/How-To%3a-Require-admin-to-activate-account-before-sign_in
    - def send_admin_mail # SET UP WITH ACTION MAILER
    AdminMailer.new_user_waiting_for_approval(self).deliver
    end

--> Registrations_controller.rb
    - REMOVED A LINE SO DELTE COMMENT IF ALL IS WELL (which it should be because we've set the devise user scope in routes.rb)
    - # render "/new_office" --> I think this was defined in scope so it's unnecessary

!!! DONE !!!
============

X --> new_office.html.erb
    - NEED OFFICE TO SAVE

X --> welcome/new_user.html.erb
    - NEED COLLECTION TO SHOW



DON'T FORGET
============

** CAN USE .ADMIN & .STAFF (as created in User.rb) FOR ADMIN & NON-ADMIN


RESOURCES
==========
- Advanced Form - http://www.theodinproject.com/ruby-on-rails/advanced-forms

- Devise: Require Admin To Activate User - https://github.com/plataformatec/devise/wiki/How-To:-Require-admin-to-activate-account-before-sign_in

- Devise: Strong Paramaters (accepting nested attributes) - https://github.com/plataformatec/devise#strong-parameters