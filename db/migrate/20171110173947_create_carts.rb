class CreateCarts < ActiveRecord::Migration[5.1]
  def change
    create_table :carts do |t|
      t.references :product, foreign_key: true
      t.references :customer, foreign_key: true
      t.string :quantity
      t.string :total_amount
      t.boolean :is_checked_out

      t.timestamps
    end
  end
end
