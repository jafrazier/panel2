class CreateCohorts < ActiveRecord::Migration[5.2]
  def change
    create_table :cohorts do |t|
      t.string :name
      t.datetime :start_date
      t.datetime :end_date
      t.integer :course_id
      t.integer :student_id
      t.integer :instructor_id

      t.timestamps
    end
  end
end
