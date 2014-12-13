class CreateCalls < ActiveRecord::Migration
  def change
    create_table :calls do |t|
      t.integer :phone_number_id
      t.integer :category_id

      t.timestamps
    end
  end
end
