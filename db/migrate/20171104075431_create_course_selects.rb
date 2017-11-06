class CreateCourseSelects < ActiveRecord::Migration[5.1]
  def change
    create_table :course_selects do |t|
      t.string :num
      t.string :name
      t.integer :score
      t.string :tutor

      t.timestamps
    end
  end
end
