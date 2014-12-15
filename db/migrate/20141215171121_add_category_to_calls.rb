class AddCategoryToCalls < ActiveRecord::Migration
  def change
    add_column :calls, :category, :string
    add_column :calls, :position, :string
    add_column :calls, :sub_category, :string
  end
end
