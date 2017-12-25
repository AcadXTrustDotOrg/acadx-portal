class CreateDegrees < ActiveRecord::Migration[5.1]
  def change
    create_table :degrees, id: false do |t|
      t.integer :degree_id, primary_key: true
      t.string :degree_name
      t.string :degree_description

      t.timestamps
    end
  end
end
