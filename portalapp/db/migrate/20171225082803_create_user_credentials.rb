class CreateUserCredentials < ActiveRecord::Migration[5.1]
  def change
    create_table :user_credentials, id: false do |t|
      t.integer :user_id, primary_key: true, limit: 8
      t.string :password
      t.integer :logged_in, limit: 1
      t.datetime :last_login_time

      t.timestamps
    end
  end
end
