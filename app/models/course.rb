class Course < ActiveRecord::Base
  has_and_belongs_to_many :students, join_table: :classrooms
  has_enumeration_for :status, with: Status
end
