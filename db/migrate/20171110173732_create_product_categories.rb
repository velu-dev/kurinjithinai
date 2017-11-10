class CreateProductCategories < ActiveRecord::Migration[5.1]
  def change
    create_table :product_categories do |t|
      t.string :cat_name
      t.string :cat_code
      t.references :unit, foreign_key: true

      t.timestamps
    end
  end
end
