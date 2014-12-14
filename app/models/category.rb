class Category < ActiveRecord::Base

  has_many :calls
  has_many :sub_categories
  
end
