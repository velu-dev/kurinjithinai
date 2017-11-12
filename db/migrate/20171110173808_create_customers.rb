class CreateCustomers < ActiveRecord::Migration[5.1]
  def change
    create_table :customers do |t|
      t.string :full_name
      t.string :profile_pic
      t.string :mobile_number
      t.string :email_id
      t.string :password
      t.references :role, foreign_key: true
      t.timestamps
    end
  end
end
