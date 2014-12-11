class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  before_create :send_welcome_email

  belongs_to :office

  def self.admins
    where(is_admin: true)
  end

  def self.staff
    where(is_admin: false)
  end
  
end
