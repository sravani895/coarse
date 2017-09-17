class Course < ActiveRecord::Base
  belongs_to :instructor
  has_many :student_courses
  has_many :students, through: :student_courses


  validates_presence_of :name, :instructor_id, :description
  validates_numericality_of :instructor_id, greater_than: 0

end
