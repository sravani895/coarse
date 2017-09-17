class CreateCourses < ActiveRecord::Migration
  def change
    create_table :courses do |t|
      t.string :name
      t.integer :instructor_id
      t.text :description

      t.timestamps null: false
    end
  end
end
