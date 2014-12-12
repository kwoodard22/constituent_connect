class UserMailer < ActionMailer::Base
  default from: "constituentconnect@gmail.com"

  def welcome_email(user)
    @user = user
    @url  = 'http://constituentconnect.com/login'
    mail(to: @user.email, 
         subject: 'Welcome to Constituent Connect',
         sent_on: Time.now)
  end
end
