class CreateUserRoles < ActiveRecord::Migration[5.1]
  def change
    create_table :user_roles, id: false do |t|
      t.integer :role_id, primary_key: true
      t.string :role_name
      t.string :role_description

      t.timestamps
    end
  end
end
