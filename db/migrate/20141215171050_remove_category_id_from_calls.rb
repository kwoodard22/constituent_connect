class RemoveCategoryIdFromCalls < ActiveRecord::Migration
  def change
    remove_column :calls, :category_id, :integer
  end
end
