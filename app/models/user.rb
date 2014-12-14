class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  belongs_to :office
  has_many :calls
  
  accepts_nested_attributes_for :office
  after_create :send_admin_mail
  
  # https://github.com/plataformatec/devise/wiki/How-To%3a-Require-admin-to-activate-account-before-sign_in
  def send_admin_mail # SET UP WITH ACTION MAILER
    AdminMailer.new_user_waiting_for_approval(self).deliver
  end

  def self.send_reset_password_instructions(attributes={})
    recoverable = find_or_initialize_with_errors(reset_password_keys, attributes, :not_found)
    if !recoverable.approved?
      recoverable.errors[:base] << I18n.t("devise.failure.not_approved")
    elsif recoverable.persisted?
      recoverable.send_reset_password_instructions
    end
    recoverable
  end

  def active_for_authentication? 
    super && approved? 
  end 

  def inactive_message 
    if !approved? 
      :not_approved 
    else 
      super # Use whatever other message 
    end 
  end

  ##### THESE ARE ADDITIONAL #####
  def self.admins
    where(admin: true)
  end

  def self.staff
    where(admin: false)
  end
  
end
