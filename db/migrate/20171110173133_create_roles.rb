class CreateRoles < ActiveRecord::Migration[5.1]
  def change
    create_table :roles do |t|
      t.string :role
      t.string :role_name
      t.string :desc

      t.timestamps
    end
  end
end
