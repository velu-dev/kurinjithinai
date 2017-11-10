class CreateCustomers < ActiveRecord::Migration[5.1]
  def change
    create_table :customers do |t|
      t.string :full_name
      t.string :mobile_number
      t.string :email_id
      t.string :password

      t.timestamps
    end
  end
end
