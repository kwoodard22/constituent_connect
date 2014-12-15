class Call < ActiveRecord::Base

  # scope :limited, -> { where(office_id: @user.office_id) }

  belongs_to :office
  belongs_to :phone_number
  belongs_to :user
  belongs_to :category

  has_one :sub_category, through: :category


  
  accepts_nested_attributes_for :phone_number, :category, :sub_category, :user
  
end
