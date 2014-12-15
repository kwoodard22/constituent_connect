class Call < ActiveRecord::Base

  # scope :limited, -> { where(office_id: @user.office_id) }

  belongs_to :user
  belongs_to :category

  has_one :sub_category, through: :category
  has_one :office, through: :user


  
  accepts_nested_attributes_for :category, :sub_category
  
end
