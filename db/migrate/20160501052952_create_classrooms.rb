class CreateClassrooms < ActiveRecord::Migration
  def change
    create_table :classrooms do |t|
      t.belongs_to :student, index: true, foreign_key: true
      t.belongs_to :course, index: true, foreign_key: true
      t.datetime :entry_at

      t.timestamps null: false
    end
  end
end
