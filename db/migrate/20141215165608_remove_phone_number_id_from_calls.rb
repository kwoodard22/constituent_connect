class RemovePhoneNumberIdFromCalls < ActiveRecord::Migration
  def change
    remove_column :calls, :phone_number_id, :integer
  end
end
