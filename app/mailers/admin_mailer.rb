class AdminMailer < ActionMailer::Base
  default from: "constituentconnect@gmail.com"

  def new_user_waiting_for_approval(user)
    @user = user
    @office = user.office_id
    @url  = 'http://constituentconnect.com/login'
    # NEED TO FIND CORRECT SYNTAX FOR ADMIN
    mail(to: 'kwoodard22@gmail.com', 
         subject: 'Approval Needed: New User Registration',
         sent_on: Time.now)
  end
end
