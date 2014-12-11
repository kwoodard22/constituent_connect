class Office < ActiveRecord::Base

  has_many :users

  def admins
      users.admins
  end

  def staff
    users.staff
  end

end
