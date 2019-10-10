class CreateEnrollements < ActiveRecord::Migration[5.2]
  def change
    create_table :enrollements do |t|
      t.integer :user_id
      t.integer :course_id
      t.timestamps
    end
    add_index :enrollements, [:user_id, :course_id]
    add_index :enrollements, :course_id
  end
end
