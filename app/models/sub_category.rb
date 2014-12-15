class SubCategory < ActiveRecord::Base

  belongs_to :category
  belongs_to :call, through: :category

end
