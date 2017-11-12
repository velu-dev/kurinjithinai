class CreateOrders < ActiveRecord::Migration[5.1]
  def change
    create_table :orders do |t|
      t.references :product, foreign_key: true
      t.references :customer, foreign_key: true
      t.string :quantity
      t.string :total_cost
      t.string :payment
      t.boolean :is_delivered
      t.string :delivery_date
      t.string :order_status

      t.timestamps
    end
  end
end
