class Call < ActiveRecord::Base

  # scope :limited, -> { where(office_id: @user.office_id) }

  belongs_to :user
  has_one :office, through: :user
  
end
