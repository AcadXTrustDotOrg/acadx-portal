class CreateJoinTableUsersUserRoles < ActiveRecord::Migration[5.1]
  def change
    create_join_table :users, :user_roles, table_name: :user_role_mapping do |t|
      t.index [:user_id, :user_role_id]

      t.timestamps
    end
  end
end
