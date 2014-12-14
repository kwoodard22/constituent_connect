class Call < ActiveRecord::Base

  belongs_to :phone_number
  belongs_to :user
  belongs_to :category


  
  accepts_nested_attributes_for :phone_number
  
end
