class CreateOffers < ActiveRecord::Migration[5.1]
  def change
    create_table :offers do |t|
      t.string :offer_name
      t.string :products
      t.string :discount_percent
      t.string :validity

      t.timestamps
    end
  end
end
