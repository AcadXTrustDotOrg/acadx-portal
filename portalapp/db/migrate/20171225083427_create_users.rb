class CreateUsers < ActiveRecord::Migration[5.1]
  def change
    create_table :users, id: false do |t|
      t.integer :user_id, primary_key: true, limit: 8
      t.integer :modified_by, limit: 8

      t.timestamps
    end
  end
end
