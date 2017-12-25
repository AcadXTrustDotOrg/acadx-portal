class CreateDesignations < ActiveRecord::Migration[5.1]
  def change
    create_table :designations, id: false do |t|
      t.integer :designation_id, primary_key:true
      t.string :designation_name
      t.string :designation_decription

      t.timestamps
    end
  end
end
