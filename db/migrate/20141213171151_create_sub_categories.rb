class CreateSubCategories < ActiveRecord::Migration
  def change
    create_table :sub_categories do |t|
      t.string :sub_category

      t.timestamps
    end
  end
end
