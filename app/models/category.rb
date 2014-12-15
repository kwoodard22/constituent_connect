class Category < ActiveRecord::Base

  validates_presence_of :category

  has_many :calls
  has_many :sub_categories
  
end
