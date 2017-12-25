class CreateUserDetails < ActiveRecord::Migration[5.1]
  def change
    create_table :user_details, id: false do |t|
      t.integer :user_id, :limit => 8, :primary_key => true
      t.string :full_name
      t.string :email_address
      t.string :exam_roll_number
      t.string :specialization
      t.string :department
      t.string :college_name
      t.string :university_name
      t.integer :degree_id
      t.integer :designation_id
      t.string :phone_number
      t.integer :highest_qualification_degree_id
      t.integer :teaching_experience_years
      t.integer :research_experience_yrs
      t.integer :industry_experience
      t.integer :proof_document_id, :limit => 8

      t.timestamps
    end
  end
end
