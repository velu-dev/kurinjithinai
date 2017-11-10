class CreateProducts < ActiveRecord::Migration[5.1]
  def change
    create_table :products do |t|
      t.string :product_name
      t.string :quantity
      t.string :min_quantity
      t.string :price
      t.string :discount
      t.string :subscription_date
      t.string :min_delivery_date
      t.references :product_category, foreign_key: true

      t.timestamps
    end
  end
end
