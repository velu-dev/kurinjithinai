class CreateBackendUsers < ActiveRecord::Migration[5.1]
  def change
    create_table :backend_users do |t|
      t.string :user_name
      t.string :mobile_number
      t.string :email_id
      t.string :password
      t.references :role, foreign_key: true

      t.timestamps
    end
  end
end
