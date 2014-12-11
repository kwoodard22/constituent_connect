class AddOfficeIdToUsers < ActiveRecord::Migration
  def change
    add_column :users, :office_id, :integer
  end
end
