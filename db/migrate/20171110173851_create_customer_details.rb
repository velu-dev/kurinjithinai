class CreateCustomerDetails < ActiveRecord::Migration[5.1]
  def change
    create_table :customer_details do |t|
      t.string :address1
      t.string :address2
      t.string :city
      t.string :state
      t.string :pincode
      t.references :customer, foreign_key: true

      t.timestamps
    end
  end
end
