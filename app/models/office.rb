class Office < ActiveRecord::Base

  has_many :users
  has_many :calls, through: :users

end
