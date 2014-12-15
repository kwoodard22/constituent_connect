class AddPhoneNumberToCall < ActiveRecord::Migration
  def change
    add_column :calls, :phone_number, :string
  end
end
