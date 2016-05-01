class Student < ActiveRecord::Base
  has_and_belongs_to_many :courses, join_table: :classrooms
  has_enumeration_for :status, with: Status
end
